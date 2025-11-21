.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final greylist-max-o RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final greylist-max-o RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field greylist-max-o mAuxData:[I

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mRun:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    :catch_0
    :goto_0
    iget-boolean v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v3, v2, Landroid/renderscript/RenderScript;->mContext:J

    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v2

    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    aget v3, v3, v1

    const-string v6, "Error processing message from RenderScript."

    const/4 v7, 0x4

    if-ne v2, v7, :cond_3

    shr-int/lit8 v1, v5, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v5, 0x3

    shr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v8, v9, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v0, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v3, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v5, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Received a message from the script with no message handler installed."

    invoke-direct {p0, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/renderscript/RSDriverException;

    invoke-direct {p0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v4, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    if-ge v3, v2, :cond_6

    const/16 v2, 0x800

    if-lt v3, v2, :cond_4

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    sget-object v4, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput-object v1, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput v3, v1, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "non fatal RS error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderScript_jni"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fatal error "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", details: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v7, v2, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v2, v7, v8, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v2

    if-ne v2, v3, :cond_8

    aget v2, v0, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    aget v1, v0, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    goto/16 :goto_0

    :cond_8
    new-instance p0, Landroid/renderscript/RSDriverException;

    invoke-direct {p0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3, v1}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_a
    return-void
.end method
