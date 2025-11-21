.class public Lcom/samsung/android/lock/LsLogVerify;
.super Ljava/lang/Object;
.source "LsLogVerify.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist REQUESTOR_NAME:Ljava/lang/String; = "VRequestor.log"

.field private static final blacklist TAG:Ljava/lang/String; = "LsLogVerify"

.field private static final blacklist UNKNOWN_REQUESTOR:Ljava/lang/String; = "Unknown"

.field private static blacklist mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;


# instance fields
.field blacklist mElapsedTime:I

.field blacklist mFailCount:I

.field blacklist mMessage:[B

.field blacklist mPackage:[B

.field blacklist mProcessId:I

.field blacklist mProtectorId:J

.field blacklist mReason:[B

.field blacklist mReqTime:J

.field blacklist mResponse:I

.field blacklist mSalt:[B

.field blacklist mSlot:I

.field blacklist mTimeout:J

.field blacklist mType:I

.field blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLogVerify;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/lock/LsLogVerify;->init()V

    iput p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    return-void
.end method

.method public static blacklist begin(ILjava/lang/Throwable;)V
    .locals 3

    const-string v0, "begin"

    const-string v1, "LsLogVerify"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Unknown"

    :goto_1
    move-object v0, p1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/lock/LsLogVerify;->openResult(I)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/lock/LsLogVerify;->setReason(Ljava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "begin failed"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist byteToText([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const-string/jumbo p0, "null"

    return-object p0
.end method

.method private static blacklist closeResult()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->saveRequestor(Lcom/samsung/android/lock/LsLogVerify;)V

    return-void
.end method

.method public static blacklist finish(IJLjava/lang/String;)V
    .locals 9

    const-string v0, "finish"

    const-string v1, "LsLogVerify"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/lock/LsLogVerify;->openResult()Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v2

    iget v0, v2, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    if-nez p0, :cond_0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v3, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/lock/LsLogVerify;->setResponse(IIJLjava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;

    invoke-static {v2, v8}, Lcom/samsung/android/lock/LsLogSummary;->addVerifySuccess(Lcom/samsung/android/lock/LsLogVerify;Z)V

    move v4, v0

    goto :goto_0

    :cond_0
    move v3, p0

    move-wide v5, p1

    move-object v7, p3

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/lock/LsLogVerify;->setResponse(IIJLjava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;

    invoke-static {v2, v8}, Lcom/samsung/android/lock/LsLogSummary;->addVerifyFailed(Lcom/samsung/android/lock/LsLogVerify;Z)V

    :goto_0
    if-nez v3, :cond_1

    if-le v4, v8, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogVerify;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/lock/LsLogVerify;->toEventLog()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->events(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lock/LsLogVerify;->closeResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "finish failed"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist fromBytes([B)Lcom/samsung/android/lock/LsLogVerify;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    new-instance v1, Lcom/samsung/android/lock/LsLogVerify;

    invoke-direct {v1, p0}, Lcom/samsung/android/lock/LsLogVerify;-><init>(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mProtectorId:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    const/4 v2, 0x0

    if-lez p0, :cond_0

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-lez p0, :cond_1

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    iput-object v2, v1, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-lez p0, :cond_2

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v1
.end method

.method private blacklist init()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    iput v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    iput-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mProtectorId:J

    iput-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    iput-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    return-void
.end method

.method private static blacklist loadRequestor(I)Lcom/samsung/android/lock/LsLogVerify;
    .locals 11

    const-string v0, "VRequestor.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogSummary;->loadFile(Ljava/lang/String;Z)[B

    move-result-object v0

    const-string v2, "LsLogVerify"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    array-length v4, v0

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    array-length v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v0, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-eq v0, p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "mismatch enroll data, Req User %d, Saved User %d, pid %d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogVerify;->saveRequestor(Lcom/samsung/android/lock/LsLogVerify;)V

    return-object v3

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    add-long/2addr v9, v5

    cmp-long v0, v9, v7

    if-gez v0, :cond_2

    invoke-static {v5, v6}, Lcom/samsung/android/lock/LsUtil;->getTimeForLog(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8}, Lcom/samsung/android/lock/LsUtil;->getTimeForLog(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "request data is too old, req = %s, cur = %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/samsung/android/lock/LsLogVerify;->saveRequestor(Lcom/samsung/android/lock/LsLogVerify;)V

    return-object v3

    :cond_2
    new-instance v0, Lcom/samsung/android/lock/LsLogVerify;

    invoke-direct {v0, p0}, Lcom/samsung/android/lock/LsLogVerify;-><init>(I)V

    iput v1, v0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    iput-wide v5, v0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, v0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3
    :goto_0
    const-string/jumbo p0, "no requestor data"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static blacklist openResult()Lcom/samsung/android/lock/LsLogVerify;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->openResult(I)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist openResult(I)Lcom/samsung/android/lock/LsLogVerify;
    .locals 7

    const-string v0, "LsLogVerify"

    sget-object v1, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "    "

    const/16 v2, 0xa

    const-string v3, ". Unknown requestor :\n"

    const-string v4, "No verify data for user "

    if-ltz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/lock/LsLogVerify;->loadRequestor(I)Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "loadRequestor failed "

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v5, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/lock/LsLogVerify;

    invoke-direct {v0, p0}, Lcom/samsung/android/lock/LsLogVerify;-><init>(I)V

    sput-object v0, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/lock/LsLogVerify;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/lock/LsLogVerify;-><init>(I)V

    sput-object p0, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/lock/LsLogVerify;->mVerifyResult:Lcom/samsung/android/lock/LsLogVerify;

    return-object p0
.end method

.method public static blacklist request(IILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "request"

    const-string v1, "LsLogVerify"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26ab

    if-ne p0, v0, :cond_0

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(N-1)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/samsung/android/lock/LsLogVerify;

    invoke-direct {v0, p0}, Lcom/samsung/android/lock/LsLogVerify;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/lock/LsLogVerify;->setPackage(ILjava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->saveRequestor(Lcom/samsung/android/lock/LsLogVerify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "request failed"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist saveRequestor(Lcom/samsung/android/lock/LsLogVerify;)V
    .locals 4

    const-string v0, "VRequestor.log"

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v1, 0x0

    aput-byte v1, p0, v1

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/lang/String;[B)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/lock/LsLogSummary;->saveFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public static blacklist update(IIJ[B)V
    .locals 8

    const-string/jumbo v0, "update"

    const-string v1, "LsLogVerify"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/lock/LsLogVerify;->openResult()Lcom/samsung/android/lock/LsLogVerify;

    move-result-object v2

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/lock/LsLogVerify;->setData(IIJ[B)Lcom/samsung/android/lock/LsLogVerify;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "update failed"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist setData(IIJ[B)Lcom/samsung/android/lock/LsLogVerify;
    .locals 0

    iput p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    iput p2, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    iput-wide p3, p0, Lcom/samsung/android/lock/LsLogVerify;->mProtectorId:J

    if-eqz p5, :cond_0

    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    :cond_0
    return-object p0
.end method

.method public blacklist setPackage(ILjava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p2, Lcom/samsung/android/lock/LsLogVerify;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown package :\n"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    const-string v1, "    "

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LsLogVerify"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "Unknown"

    :cond_1
    iput p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    return-object p0
.end method

.method public blacklist setReason(Ljava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Unknown"

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    return-object p0
.end method

.method public blacklist setResponse(IIJLjava/lang/String;)Lcom/samsung/android/lock/LsLogVerify;
    .locals 0

    iput p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    iput p2, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    iput-wide p3, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    sub-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    return-object p0
.end method

.method public blacklist toBytes()[B
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3e

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    if-nez v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mProtectorId:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    if-eqz v1, :cond_5

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    if-eqz v1, :cond_6

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDetailsLog(Z)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v1, v2}, Lcom/samsung/android/lock/LsUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mProcessId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  = %s [%s:%d]\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-static {v2}, Lcom/samsung/android/lock/LsUtil;->gethashStr([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "  = Slot(%d) / Hash : %s\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-static {v3}, Lcom/samsung/android/lock/LsUtil;->gethashStr([B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "  = %s / Slot(%d) / Salt : %s\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    invoke-static {p1}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "  = %s(%d) (%d/%d)\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toEventLog()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "User %d %s OK on [%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lock/LsLogVerify;->mType:I

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v0, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "User %d %s Fail on [%s](%d/%d)]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mMessage:[B

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-static {v0}, Lcom/samsung/android/lock/LsUtil;->gethashStr([B)Ljava/lang/String;

    move-result-object v5

    iget p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "User %d(%d) %s [%s]%s(%dms)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/lock/LsLogVerify;->mSalt:[B

    invoke-static {v5}, Lcom/samsung/android/lock/LsUtil;->gethashStr([B)Ljava/lang/String;

    move-result-object v6

    iget v5, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mElapsedTime:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, v4

    move-object v4, v0

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "User %d(%d) %s(%d) [%s]%s(%d/%d)(%dms)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toSummary()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mPackage:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReason:[B

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/lock/LsLogVerify;->byteToText([B)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsUtil;->getTimeForLog(J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s Verify OK(U:%d,S:%d) [%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mReqTime:J

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsUtil;->getTimeForLog(J)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mResponse:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/samsung/android/lock/LsLogVerify;->mFailCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/lock/LsLogVerify;->mTimeout:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s Verify Fail(U:%d,S:%d,E:%d) [%s](%d/%d)]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
