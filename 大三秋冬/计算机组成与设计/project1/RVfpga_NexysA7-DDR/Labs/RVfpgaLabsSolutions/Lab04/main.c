typedef struct {
    unsigned char R;
    unsigned char G;
    unsigned char B;
} RGB;


#define N 128
#define M 128
//#define N 256
//#define M 256

extern unsigned char VanGogh_128x128[];
//extern unsigned char TheScream_256x256[];

RGB ColourImage[N][M];
unsigned char GreyImage[N][M];


int whites;
int blacks;


void initColourImage(RGB image[N][M]) {
    int i,j;

    for (i=0;i<N;i++)
        for (j=0; j<M; j++) {
            image[i][j].R = VanGogh_128x128[(i*M + j)*3];
            image[i][j].G = VanGogh_128x128[(i*M + j)*3 + 1];
            image[i][j].B = VanGogh_128x128[(i*M + j)*3 + 2];
//            image[i][j].R = TheScream_256x256[(i*M + j)*3];
//            image[i][j].G = TheScream_256x256[(i*M + j)*3 + 1];
//            image[i][j].B = TheScream_256x256[(i*M + j)*3 + 2];
        }
}


int ColourToGrey_Pixel(int R, int G, int B) {
    return  (3483*R + 11718*G + 1183*B) /16384;
}


void WhiteAndBlackElements(unsigned char mat[N][M]) {
    int i,j;

    for (i=0;i<N;i++) {
        for (j=0; j<M; j++) {
            if ( mat[i][j] > 235) whites++;
            if ( mat[i][j] < 20)  blacks++;
        }
    }
}


#define filterSize 3

double filter[filterSize][filterSize] = {{0, 0.2, 0}, {0.2, 0.2, 0.2}, {0, 0.2, 0}};

RGB FilterColourImage[N][M];

void ImageFilter(RGB orig[N][M], RGB dest[N][M]){
    int i, j;
    int red, green, blue;
    int filterX, filterY;

    for(i = (filterSize-1)/2; i<(N-((filterSize-1)/2)); i++){
        for(j = (filterSize-1)/2; j<(M-((filterSize-1)/2)); j++){
            
            red=0;
            green=0;
            blue=0;

            for(filterX = 0; filterX<filterSize; filterX++){
                for(filterY = 0; filterY<filterSize; filterY++){
                    red += orig[i+filterX-1][j+filterY-1].R * filter[filterX][filterY];
                    green += orig[i+filterX-1][j+filterY-1].G * filter[filterX][filterY];
                    blue += orig[i+filterX-1][j+filterY-1].B * filter[filterX][filterY];
                }
            }

            dest[i][j].R = red;
            dest[i][j].G = green;
            dest[i][j].B = blue;
        }
    }
}


extern int ColourToGrey(RGB Colour[N][M], unsigned char Grey[N][M]);

int main(void) {
    // Create an NxM matrix using the input image
    initColourImage(ColourImage);

    // Filter colour image
    ImageFilter(ColourImage,FilterColourImage);

    // Transform Colour Image to Grey Image
    ColourToGrey(ColourImage,GreyImage);

    // Count white and black elements
    whites=0;
    blacks=0;
    WhiteAndBlackElements(GreyImage);

    while(1);

    return 0;
}


