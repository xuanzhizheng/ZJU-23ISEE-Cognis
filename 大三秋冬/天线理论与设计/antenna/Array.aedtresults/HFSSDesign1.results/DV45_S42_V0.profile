$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/29/2025 21:23:05')
			I(1, 'Host', 'LAPTOP-V15JOVGD')
			I(1, 'Processor', '24')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:23')
			I(1, 'ComEngine Memory', '101 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'D:\\\\ANSYS Inc\\\\ANSYS Student\\\\v252\\\\AnsysEM\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'LAPTOP-V15JOVGD\', 1, \'Memory\', \'31.1 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'13.3 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 97.1 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/29/2025 21:23:05')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:03')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 1, 0, 87000, 'I(3, 2, \'Tetrahedra\', 55598, false, 1, \'Type\', \'TAU\', 2, \'Cores\', 4, false)', true, true)
			ProfileItem('Coarsen', 1, 0, 1, 0, 87000, 'I(1, 2, \'Tetrahedra\', 5407, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 27480, 'I(1, 2, \'Tetrahedra\', 5746, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 185412, 'I(2, 2, \'Tetrahedra\', 3349, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 192564, 'I(2, 2, \'Tetrahedra\', 3349, false, 1, \'Disk\', \'33.4 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 26724, 'I(1, 2, \'Tetrahedra\', 5805, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/29/2025 21:23:09')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:13')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '3GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 187112, 'I(2, 2, \'Tetrahedra\', 3373, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 213972, 'I(3, 2, \'Tetrahedra\', 3373, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 255600, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17767, false, 3, \'Matrix bandwidth\', 17.4608, \'%5.1f\', 1, \'Disk\', \'72.6 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 255600, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'469 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 102768, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1761744190')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'17767\', 1, \'Matrixbw\', \'17.485800\', 1, \'Matrixnnz\', \'310670\', 1, \'Rootdim\', \'311\', 1, \'Mathtype\', \'amd\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'AMD Ryzen AI 9 HX 370 w/ Radeon 890M           \', 1, \'CpuPhysicCores\', \'12\', 1, \'CpuLogicCores\', \'24\', 1, \'Cpufreqkhz\', \'28513900544.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'64.000000\', 1, \'Cpuestgflops\', \'524.799988\', 1, \'Memorybwestkbps\', \'51.200001\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1588\', 1, \'Factornnz\', \'2166542\', 1, \'Factorestflops\', \'908699642\', 1, \'Fbsestflops\', \'6989944\', 1, \'Rootfactestflops\', \'10028529\', 1, \'Rootfbsestflops\', \'48360\', 1, \'Analysistimesec\', \'0.071922\', 1, \'Analysismemkb\', \'9124.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.086961\', 1, \'Factorizationmentotalkb\', \'54143.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'1\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004580\', 1, \'Fbscputimesec\', \'0.004580\', 1, \'Fbsmemorytotalkb\', \'48508.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'54143\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '3GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 29324, 'I(1, 2, \'Tetrahedra\', 6818, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 189520, 'I(2, 2, \'Tetrahedra\', 4389, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 225452, 'I(3, 2, \'Tetrahedra\', 4389, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'26 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 291412, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 24185, false, 3, \'Matrix bandwidth\', 18.6065, \'%5.1f\', 1, \'Disk\', \'96.1 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 291412, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'235 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 102920, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1761744193')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'24185\', 1, \'Matrixbw\', \'18.625000\', 1, \'Matrixnnz\', \'450445\', 1, \'Rootdim\', \'411\', 1, \'Mathtype\', \'amd\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'AMD Ryzen AI 9 HX 370 w/ Radeon 890M           \', 1, \'CpuPhysicCores\', \'12\', 1, \'CpuLogicCores\', \'24\', 1, \'Cpufreqkhz\', \'28508700672.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'64.000000\', 1, \'Cpuestgflops\', \'524.799988\', 1, \'Memorybwestkbps\', \'51.200001\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2132\', 1, \'Factornnz\', \'3656133\', 1, \'Factorestflops\', \'2003049290\', 1, \'Fbsestflops\', \'12177671\', 1, \'Rootfactestflops\', \'23144513\', 1, \'Rootfbsestflops\', \'84460\', 1, \'Analysistimesec\', \'0.112237\', 1, \'Analysismemkb\', \'13176.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.139692\', 1, \'Factorizationmentotalkb\', \'88003.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'1\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.007210\', 1, \'Fbscputimesec\', \'0.007210\', 1, \'Fbsmemorytotalkb\', \'76416.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'88003\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.153862, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '3GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30860, 'I(1, 2, \'Tetrahedra\', 8140, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 192716, 'I(2, 2, \'Tetrahedra\', 5715, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 241112, 'I(3, 2, \'Tetrahedra\', 5715, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 344280, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 32553, false, 3, \'Matrix bandwidth\', 19.4655, \'%5.1f\', 1, \'Disk\', \'129 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 344280, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'290 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 103056, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1761744196')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'32553\', 1, \'Matrixbw\', \'19.479401\', 1, \'Matrixnnz\', \'634113\', 1, \'Rootdim\', \'461\', 1, \'Mathtype\', \'amd\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'AMD Ryzen AI 9 HX 370 w/ Radeon 890M           \', 1, \'CpuPhysicCores\', \'12\', 1, \'CpuLogicCores\', \'24\', 1, \'Cpufreqkhz\', \'28497600512.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'64.000000\', 1, \'Cpuestgflops\', \'524.799988\', 1, \'Memorybwestkbps\', \'51.200001\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2858\', 1, \'Factornnz\', \'5966889\', 1, \'Factorestflops\', \'4259350000\', 1, \'Fbsestflops\', \'20342838\', 1, \'Rootfactestflops\', \'32659884\', 1, \'Rootfbsestflops\', \'106260\', 1, \'Analysistimesec\', \'0.160187\', 1, \'Analysismemkb\', \'18712.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.204581\', 1, \'Factorizationmentotalkb\', \'148749.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'1\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.009201\', 1, \'Fbscputimesec\', \'0.009201\', 1, \'Fbsmemorytotalkb\', \'118604.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'148749\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0663729, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '3GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 33200, 'I(1, 2, \'Tetrahedra\', 9858, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 196728, 'I(2, 2, \'Tetrahedra\', 7428, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 260356, 'I(3, 2, \'Tetrahedra\', 7428, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'45 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 425932, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 43435, false, 3, \'Matrix bandwidth\', 20.086, \'%5.1f\', 1, \'Disk\', \'171 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 425932, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'368 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 103108, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1761744199')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'43435\', 1, \'Matrixbw\', \'20.096399\', 1, \'Matrixnnz\', \'872888\', 1, \'Rootdim\', \'561\', 1, \'Mathtype\', \'amd\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'AMD Ryzen AI 9 HX 370 w/ Radeon 890M           \', 1, \'CpuPhysicCores\', \'12\', 1, \'CpuLogicCores\', \'24\', 1, \'Cpufreqkhz\', \'28484599808.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'64.000000\', 1, \'Cpuestgflops\', \'524.799988\', 1, \'Memorybwestkbps\', \'51.200001\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3814\', 1, \'Factornnz\', \'9572044\', 1, \'Factorestflops\', \'8800610000\', 1, \'Fbsestflops\', \'32917279\', 1, \'Rootfactestflops\', \'58855868\', 1, \'Rootfbsestflops\', \'157360\', 1, \'Analysistimesec\', \'0.225429\', 1, \'Analysismemkb\', \'25632.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.408736\', 1, \'Factorizationmentotalkb\', \'239541.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'1\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.016147\', 1, \'Fbscputimesec\', \'0.016147\', 1, \'Fbsmemorytotalkb\', \'187316.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'239541\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0234254, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(1, 'Frequency', '3GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35412, 'I(1, 2, \'Tetrahedra\', 12088, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 201300, 'I(2, 2, \'Tetrahedra\', 9656, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 286760, 'I(3, 2, \'Tetrahedra\', 9656, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 3, 0, 550328, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 57627, false, 3, \'Matrix bandwidth\', 20.5531, \'%5.1f\', 1, \'Disk\', \'227 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 550328, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'475 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 103228, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1761744202')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'57627\', 1, \'Matrixbw\', \'20.560900\', 1, \'Matrixnnz\', \'1184864\', 1, \'Rootdim\', \'695\', 1, \'Mathtype\', \'amd\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'AMD Ryzen AI 9 HX 370 w/ Radeon 890M           \', 1, \'CpuPhysicCores\', \'12\', 1, \'CpuLogicCores\', \'24\', 1, \'Cpufreqkhz\', \'28466200576.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'64.000000\', 1, \'Cpuestgflops\', \'524.799988\', 1, \'Memorybwestkbps\', \'51.200001\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5027\', 1, \'Factornnz\', \'14659320\', 1, \'Factorestflops\', \'16579100000\', 1, \'Fbsestflops\', \'50903677\', 1, \'Rootfactestflops\', \'111904629\', 1, \'Rootfbsestflops\', \'241512\', 1, \'Analysistimesec\', \'0.355318\', 1, \'Analysismemkb\', \'34172.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.540195\', 1, \'Factorizationmentotalkb\', \'362289.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'1\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.024468\', 1, \'Fbscputimesec\', \'0.024468\', 1, \'Fbsmemorytotalkb\', \'293408.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'362289\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00779947, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/29/2025 21:23:23')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:05')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			ProfileItem('Solution Sweep', 0, 0, 0, 0, 0, 'I(1, 0, \'Fast Sweep\')', false, true)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 2.5 GHz to 3.5 GHz, 999 Steps\')', false, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 197736, 'I(2, 2, \'Tetrahedra\', 9656, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Matrix Assembly', 0, 0, 1, 0, 281356, 'I(3, 2, \'Tetrahedra\', 9656, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Matrix Solve', 4, 0, 9, 0, 589436, 'I(18, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Matrix size\', 57627, false, 3, \'Matrix bandwidth\', 20.5531, \'%5.1f\', 2, \'Reduced matrix size\', 20, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 2, \'Lumped ports\', 1, false, 1, \'Disk\', \'17.7 MB\')', true, true)
			ProfileItem('Field Recovery', 0, 0, 0, 0, 589436, 'I(2, 2, \'Excitations\', 1, false, 1, \'Disk\', \'2.28 MB\')', true, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'97.1 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:03\', 1, \'Total Memory\', \'273 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:13\', 1, \'Average memory/process\', \'537 MB\', 1, \'Max memory/process\', \'537 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:05\', 1, \'Total Memory\', \'576 MB\')', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 9656, false, 2, \'Max matrix size\', 57627, false, 1, \'Matrix bandwidth\', \'20.6\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/29/2025 21:23:29\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
