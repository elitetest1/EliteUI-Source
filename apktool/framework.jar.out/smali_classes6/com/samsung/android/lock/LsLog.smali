.class public final Lcom/samsung/android/lock/LsLog;
.super Ljava/lang/Object;
.source "LsLog.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "LsLog"

.field private static final blacklist mFailureCount:Landroid/util/SparseIntArray;

.field private static blacklist mSecurityDebugLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLog;->DEBUG:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/LsLog;->mFailureCount:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/lock/LsUtil;->makeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLogger;->addLog(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LsLog."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist addDetailsInfo()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->addRecentHistory()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->addAutoAnalisys()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    return-void
.end method

.method public static blacklist enroll(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist enroll(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->ENROLL:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist enrollBegin(I)V
    .locals 1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLogEnroll;->begin(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static blacklist enrollFinish(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLogEnroll;->finish(ILjava/lang/String;)V

    return-void
.end method

.method public static blacklist enrollRequest(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/lock/LsLogEnroll;->request(IILjava/lang/String;)V

    return-void
.end method

.method public static blacklist enrollUpdate(IIJ[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/lock/LsLogEnroll;->update(IIJ[B)V

    return-void
.end method

.method public static blacklist events(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->events(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist events(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->EVENTS:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->EVENTS:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized blacklist getFailureCount(I)I
    .locals 2

    const-class v0, Lcom/samsung/android/lock/LsLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/lock/LsLog;->mFailureCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist keyErr(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->keyErr(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist keyErr(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->KEYERR:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist migrate(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->migrate(I)V

    return-void
.end method

.method public static blacklist prepare()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->prepare()V

    invoke-static {}, Lcom/samsung/android/lock/LsLogSummary;->prefetchData()V

    return-void
.end method

.method public static blacklist restore(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist restore(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->RESTORE:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist setCurIds(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/lock/LsLogSummary;->setCurIds(JJ)V

    return-void
.end method

.method public static declared-synchronized blacklist setFailureCount(II)V
    .locals 4

    const-string v0, "User "

    const-class v1, Lcom/samsung/android/lock/LsLog;

    monitor-enter v1

    :try_start_0
    const-string v2, "LsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " setFailureCount = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/lock/LsLog;->mFailureCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static blacklist setSecurityDebugLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSecurityDebugLevel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lcom/samsung/android/lock/LsLog;->mSecurityDebugLevel:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->reset(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist show()V
    .locals 2

    sget v0, Lcom/samsung/android/lock/LsLog;->mSecurityDebugLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->show()V

    :cond_0
    return-void
.end method

.method public static blacklist summary(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->SUMMARY:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsUtil;->makeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogger;->addLog(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LsLog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist tryUpload(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogUploader;->tryUpload(Landroid/content/Context;)V

    return-void
.end method

.method public static blacklist unknown(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->unknown(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist unknown(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->UNKNOWN:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist verify(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist verify(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLog;->add(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/lock/LsLogType;->VERIFY:Lcom/samsung/android/lock/LsLogType;

    invoke-static {p0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method

.method public static blacklist verifyBegin(I)V
    .locals 1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLogVerify;->begin(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static blacklist verifyFinish(IJLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/lock/LsLogVerify;->finish(IJLjava/lang/String;)V

    return-void
.end method

.method public static blacklist verifyRequest(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/lock/LsLogVerify;->request(IILjava/lang/String;)V

    return-void
.end method

.method public static blacklist verifyUpdate(IIJ[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/lock/LsLogVerify;->update(IIJ[B)V

    return-void
.end method
