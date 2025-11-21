.class public Lcom/samsung/android/os/SemAffinityControl;
.super Ljava/lang/Object;
.source "SemAffinityControl.java"


# static fields
.field public static final blacklist DEBUG:Z

.field private static final blacklist HMP_CORE_FRONT:I = 0x0

.field private static final blacklist HMP_CORE_REAR:I = 0x1

.field private static final blacklist HMP_PROPERTY:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SemAffinityControl"

.field private static blacklist bigIndex:I

.field private static blacklist littleIndex:I

.field private static blacklist nBig:[I

.field private static blacklist nLittle:[I

.field private static blacklist strHmpCore:[Ljava/lang/String;


# instance fields
.field private blacklist core_num:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    const-string/jumbo v0, "sys.perf.hmp"

    const-string v1, "4:4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    sput v0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v0, "[Java Side], SemAffinityControl Class Initialized"

    const-string v1, "SemAffinityControl"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/os/SemAffinityControl;->initializeHmpCore()V

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget v2, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget v3, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Java Side], SemAffinityControl Class Initialized core_num : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length p0, p0

    sget v0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    sget-object p0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length p0, p0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p0

    move p0, v1

    :goto_0
    move v2, v1

    :goto_1
    sget-object v3, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    add-int v4, v2, p0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int v2, v1, v0

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static blacklist initializeHmpCore()V
    .locals 5

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    const-string v1, "B"

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v2, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    sput v3, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    goto :goto_0

    :cond_0
    sput v3, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    sput v2, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    :goto_0
    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget v1, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget v1, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    return-void
.end method

.method public static blacklist logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native blacklist native_set_affinity(I[I)I
.end method

.method public static blacklist readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "readSysfs:: path = "

    const-string v1, "e = "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", strTemp result = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v2

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, v2

    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object v2, v0

    :goto_2
    return-object v2

    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    throw p1
.end method


# virtual methods
.method public blacklist clearAffinity(I)I
    .locals 7

    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const/4 v1, 0x0

    const-string v2, "SemAffinityControl"

    const/4 v3, 0x1

    if-gez v0, :cond_2

    const-string/jumbo v0, "sys.perf.hmp"

    const-string v4, "4:4"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-lt v4, v5, :cond_0

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-ltz v4, :cond_1

    iput v4, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[Java Side], clearAffinity numCore : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", core_num : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "clear_affinity_failed. It can\'t read the num of core"

    invoke-static {v2, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    const-string v4, "clear_affinity_failed"

    if-lez v0, :cond_5

    add-int/2addr v0, v3

    new-array v0, v0, [I

    move v5, v1

    :goto_2
    iget v6, p0, Lcom/samsung/android/os/SemAffinityControl;->core_num:I

    if-gt v5, v6, :cond_3

    aput v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result p0

    if-ne p0, v3, :cond_4

    invoke-static {v2, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    const-string p0, "clear_affinity_success"

    invoke-static {v2, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    invoke-static {v2, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public varargs blacklist setAffinity(I[I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result p0

    const-string p1, "SemAffinityControl"

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string/jumbo p0, "sched_set_affinity_failed"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    const-string/jumbo p0, "sched_set_affinity_success"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setAffinityForBig(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result p0

    const-string p1, "SemAffinityControl"

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "sched_set_affinity_failed"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo p0, "sched_set_affinity_success"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public blacklist setAffinityForLittle(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->HMP_PROPERTY:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result p0

    const-string p1, "SemAffinityControl"

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "sched_set_affinity_failed"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo p0, "sched_set_affinity_success"

    invoke-static {p1, p0}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method
