; ModuleID = 'binaryOps.c'
source_filename = "binaryOps.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Result = %#04x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printResult(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %5)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 66, i8* %2, align 1
  store i8 18, i8* %3, align 1
  store i8 -104, i8* %4, align 1
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %7, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %5, align 1
  call void @printResult(i8* %5)
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  call void @printResult(i8* %5)
  %18 = load i8, i8* %2, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  call void @printResult(i8* %5)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-svn281634-1~exp1 (branches/release_39)"}
