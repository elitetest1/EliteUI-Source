.class public final Lcom/samsung/android/lock/LsLogger;
.super Ljava/lang/Object;
.source "LsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lock/LsLogger$Logger;
    }
.end annotation


# static fields
.field private static final blacklist ACCUM_TIME_MS:I = 0x7d0

.field private static final blacklist DEBUG:Z

.field private static final blacklist MAX_LINES:I = 0xc8

.field private static final blacklist TAG:Ljava/lang/String; = "LsLogger"

.field private static final blacklist mLoggers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/lock/LsLogger$Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmLoggers()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogger;->mLoggers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetLogger(Lcom/samsung/android/lock/LsLogType;Lcom/samsung/android/lock/LsLogger$Logger;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLogger;->setLogger(Lcom/samsung/android/lock/LsLogType;Lcom/samsung/android/lock/LsLogger$Logger;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLogger;->DEBUG:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/LsLogger;->mLoggers:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addLog(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogger;->mLoggers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/lock/LsLogger;->getLogger(Lcom/samsung/android/lock/LsLogType;)Lcom/samsung/android/lock/LsLogger$Logger;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLogger$Logger;->-$$Nest$madd(Lcom/samsung/android/lock/LsLogger$Logger;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist getLogger(Lcom/samsung/android/lock/LsLogType;)Lcom/samsung/android/lock/LsLogger$Logger;
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/lock/LsLogger;->mLoggers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lock/LsLogger$Logger;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/lock/LsLogger$Logger;

    invoke-direct {v2, p0}, Lcom/samsung/android/lock/LsLogger$Logger;-><init>(Lcom/samsung/android/lock/LsLogType;)V

    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogger$Logger;->start()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Loggers="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LsLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2
.end method

.method private static blacklist setLogger(Lcom/samsung/android/lock/LsLogType;Lcom/samsung/android/lock/LsLogger$Logger;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->LIST:[Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/lock/LsLogger;->mLoggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
