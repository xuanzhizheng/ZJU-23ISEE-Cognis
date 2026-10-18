Import("env")
env.Append(
  LINKFLAGS=[
      "-Wa,-march=rv32ima",
      "-march=rv32ima"
  ]
)