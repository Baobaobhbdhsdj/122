; ModuleID = '/Users/baobaoli/Desktop/all/median/22-E-14014681.c'
source_filename = "/Users/baobaoli/Desktop/all/median/22-E-14014681.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@vec = global [100000 x i32] zeroinitializer, align 4
@c1 = global [100000 x i32] zeroinitializer, align 4
@vec1 = global [100000 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@vec2 = global [100000 x i32] zeroinitializer, align 4
@matriz = global [100000 x [2 x i32]] zeroinitializer, align 4
@res = global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [100000 x i32], ptr @vec, i64 0, i64 %5
  store i32 1, ptr %6, align 4
  %7 = load i32, ptr %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100000 x i32], ptr @vec, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100000 x i32], ptr @vec1, i64 0, i64 %21
  store i32 %19, ptr %22, align 4
  store i32 %19, ptr %3, align 4
  br label %53

23:                                               ; preds = %1
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [100000 x i32], ptr @vec, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i32, ptr %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @f(i32 noundef %36)
  %38 = load i32, ptr %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [100000 x i32], ptr @vec1, i64 0, i64 %39
  store i32 %37, ptr %40, align 4
  store i32 %37, ptr %3, align 4
  br label %52

41:                                               ; preds = %23
  %42 = load i32, ptr %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100000 x i32], ptr @vec1, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100000 x i32], ptr @vec1, i64 0, i64 %50
  store i32 %48, ptr %51, align 4
  store i32 %48, ptr %3, align 4
  br label %52

52:                                               ; preds = %41, %32
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32, ptr %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100000 x i32], ptr @vec, i64 0, i64 %55
  store i32 2, ptr %56, align 4
  %57 = load i32, ptr %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %10 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %6)
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %17
  %19 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %18)
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100000 x i32], ptr @c1, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100000 x i32], ptr @vec2, i64 0, i64 %29
  store i32 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %15
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %11, !llvm.loop !5

34:                                               ; preds = %11
  store i32 0, ptr %7, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, ptr %7, align 4
  %37 = load i32, ptr %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100000 x i32], ptr @vec2, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, ptr @res, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %49
  %51 = getelementptr inbounds [2 x i32], ptr %50, i64 0, i64 0
  store i32 %47, ptr %51, align 4
  %52 = load i32, ptr %7, align 4
  %53 = call i32 @f(i32 noundef %52)
  %54 = add nsw i32 %53, 1
  %55 = load i32, ptr @res, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %56
  %58 = getelementptr inbounds [2 x i32], ptr %57, i64 0, i64 1
  store i32 %54, ptr %58, align 4
  %59 = load i32, ptr @res, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr @res, align 4
  %61 = load i32, ptr %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %8, align 4
  br label %63

63:                                               ; preds = %45, %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %7, align 4
  br label %35, !llvm.loop !7

67:                                               ; preds = %35
  store i32 0, ptr %7, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, ptr %7, align 4
  %70 = load i32, ptr %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load i32, ptr %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [100000 x i32], ptr @vec, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, ptr @res, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %82
  %84 = getelementptr inbounds [2 x i32], ptr %83, i64 0, i64 0
  store i32 %80, ptr %84, align 4
  %85 = load i32, ptr %7, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, ptr @res, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x i32], ptr %89, i64 0, i64 1
  store i32 %86, ptr %90, align 4
  %91 = load i32, ptr @res, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr @res, align 4
  %93 = load i32, ptr %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %9, align 4
  %95 = load i32, ptr %7, align 4
  %96 = call i32 @f(i32 noundef %95)
  br label %97

97:                                               ; preds = %78, %72
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %7, align 4
  br label %68, !llvm.loop !8

101:                                              ; preds = %68
  %102 = load i32, ptr %9, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, ptr %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %109

109:                                              ; preds = %107, %104, %101
  %110 = load i32, ptr @res, align 4
  %111 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %110)
  %112 = load i32, ptr @res, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %109
  store i32 1, ptr %7, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, ptr %7, align 4
  %117 = load i32, ptr @res, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i32, ptr %7, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %122
  %124 = getelementptr inbounds [2 x i32], ptr %123, i64 0, i64 1
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %127
  %129 = getelementptr inbounds [2 x i32], ptr %128, i64 0, i64 0
  %130 = load i32, ptr %129, align 4
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %125, i32 noundef %130)
  br label %132

132:                                              ; preds = %119
  %133 = load i32, ptr %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %7, align 4
  br label %115, !llvm.loop !9

135:                                              ; preds = %115
  %136 = load i32, ptr @res, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [100000 x [2 x i32]], ptr @matriz, i64 0, i64 %138
  %140 = getelementptr inbounds [2 x i32], ptr %139, i64 0, i64 1
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr @matriz, align 4
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %141, i32 noundef %142)
  br label %144

144:                                              ; preds = %135, %109
  ret i32 0
}

declare i32 @scanf(ptr noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 18.1.8"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
