.class public Lcom/android/internal/os/CpuScalingPolicyReader;
.super Ljava/lang/Object;
.source "CpuScalingPolicyReader.java"


# static fields
.field private static final blacklist CPUFREQ_DIR:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq"

.field private static final blacklist FILE_NAME_CPUINFO_CUR_FREQ:Ljava/lang/String; = "cpuinfo_cur_freq"

.field private static final blacklist FILE_NAME_RELATED_CPUS:Ljava/lang/String; = "related_cpus"

.field private static final blacklist FILE_NAME_SCALING_AVAILABLE_FREQUENCIES:Ljava/lang/String; = "scaling_available_frequencies"

.field private static final blacklist FILE_NAME_SCALING_BOOST_FREQUENCIES:Ljava/lang/String; = "scaling_boost_frequencies"

.field private static final blacklist POLICY_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "CpuScalingPolicyReader"


# instance fields
.field private final blacklist mCpuFreqDir:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "policy(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    const-string v0, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {p0, v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    return-void
.end method

.method private static blacklist readIntsFromFile(Ljava/io/File;)[I
    .locals 9

    const-string v0, "FILE CONTENTS: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "READING FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpuScalingPolicyReader"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "FILE DOES NOT EXIST"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    :cond_0
    new-instance v1, Landroid/util/IntArray;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/util/IntArray;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->isBlank()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected file format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARSED INTS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot read "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0
.end method


# virtual methods
.method public blacklist read()Lcom/android/internal/os/CpuScalingPolicies;
    .locals 12

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    sget-object v6, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "related_cpus"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v7

    array-length v8, v7

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "scaling_available_frequencies"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v8

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "scaling_boost_frequencies"

    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v9

    array-length v10, v9

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    array-length v10, v8

    array-length v11, v9

    add-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    array-length v8, v8

    array-length v11, v9

    invoke-static {v9, v2, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v10

    :goto_1
    array-length v9, v8

    const/4 v10, 0x1

    if-nez v9, :cond_2

    new-instance v8, Ljava/io/File;

    const-string v9, "cpuinfo_cur_freq"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v8

    array-length v5, v8

    if-nez v5, :cond_2

    new-array v8, v10, [I

    aput v2, v8, v2

    :cond_2
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_5

    filled-new-array {v2}, [I

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v2}, [I

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    new-instance p0, Lcom/android/internal/os/CpuScalingPolicies;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/CpuScalingPolicies;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuScalingPolicies: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpuScalingPolicyReader"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CpuScalingPolicies.getScalingStepCount(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
