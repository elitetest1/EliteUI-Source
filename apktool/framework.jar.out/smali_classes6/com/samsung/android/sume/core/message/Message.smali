.class public Lcom/samsung/android/sume/core/message/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;,
        Lcom/samsung/android/sume/core/message/Message$RequestType;,
        Lcom/samsung/android/sume/core/message/Message$MessageType;
    }
.end annotation


# static fields
.field public static final blacklist BLOCK_DONE:I = 0x1fa

.field public static final blacklist BLOCK_START:I = 0x1f9

.field public static final blacklist CACHE_DATA:I = 0x6

.field public static final blacklist CODEC_NUM_WHOLE_FRAMES:I = 0x2

.field public static final blacklist CODEC_OUTPUT_FORMAT_CHANGED:I = 0x3

.field public static final blacklist CONTENT_DONE:I = 0x1fe

.field public static final blacklist CONTENT_START:I = 0x1fd

.field public static final blacklist CREATE_GRAPH:I = 0x384

.field public static final blacklist CREATE_MEDIAFILTER_CONTROLLER:I = 0x389

.field public static final blacklist CUSTOM_REQUEST:I = 0x3dd

.field public static final blacklist END_OF_STREAM:I = 0x5

.field public static final blacklist ERROR:I = 0x3e1

.field public static final blacklist ERROR_DEAD_OBJECT:I = -0x5

.field public static final blacklist ERROR_MALFORMED:I = -0x2

.field public static final blacklist ERROR_SERVICE_DEAD:I = -0x4

.field public static final blacklist ERROR_TIMEOUT:I = -0x1

.field public static final blacklist ERROR_UNSUPPORTED:I = -0x3

.field public static final blacklist EVENT:I = 0x3de

.field public static final blacklist FRAME_DONE:I = 0x1fc

.field public static final blacklist FRAME_START:I = 0x1fb

.field public static final blacklist GLOBAL_FINISH:I = 0x1f6

.field public static final blacklist GLOBAL_START:I = 0x1f5

.field public static final blacklist INFO:I = 0x3e2

.field public static final blacklist KEY_BLOCK_ID:Ljava/lang/String; = "block-id"

.field public static final blacklist KEY_CACHE_ID:Ljava/lang/String; = "cache-id"

.field public static final blacklist KEY_CONTENTS_ID:Ljava/lang/String; = "contents-id"

.field public static final blacklist KEY_CONTROLLER_ID:Ljava/lang/String; = "controller-id"

.field public static final blacklist KEY_DISPLAY_NAME:Ljava/lang/String; = "display-name"

.field public static final blacklist KEY_DURATION_MS:Ljava/lang/String; = "duration"

.field public static final blacklist KEY_END_TIME_MS:Ljava/lang/String; = "end-time-ms"

.field public static final blacklist KEY_END_TIME_US:Ljava/lang/String; = "end-time-us"

.field public static final blacklist KEY_FILE_DESCRIPTOR:Ljava/lang/String; = "file-descriptor"

.field public static final blacklist KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final blacklist KEY_ID:Ljava/lang/String; = "id"

.field public static final blacklist KEY_IN_BUFFER:Ljava/lang/String; = "input-buffer"

.field public static final blacklist KEY_IN_FILE:Ljava/lang/String; = "input-file"

.field public static final blacklist KEY_MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final blacklist KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final blacklist KEY_NUM_BLOCKS:Ljava/lang/String; = "num-blocks"

.field public static final blacklist KEY_NUM_UNITS:Ljava/lang/String; = "num-units"

.field public static final blacklist KEY_OUT_BUFFER:Ljava/lang/String; = "output-buffer"

.field public static final blacklist KEY_OUT_FILE:Ljava/lang/String; = "output-file"

.field public static final blacklist KEY_POSITION:Ljava/lang/String; = "position"

.field public static final blacklist KEY_PROCESSED_FRAMES:Ljava/lang/String; = "number-of-frames"

.field public static final blacklist KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"

.field public static final blacklist KEY_START_TIME_MS:Ljava/lang/String; = "start-time-ms"

.field public static final blacklist KEY_START_TIME_US:Ljava/lang/String; = "start-time-us"

.field public static final blacklist KEY_STATUS:Ljava/lang/String; = "status-code"

.field public static final blacklist KEY_UNIT_DESCRIPTION:Ljava/lang/String; = "unit-description"

.field public static final blacklist KEY_UNIT_ID:Ljava/lang/String; = "unit-id"

.field public static final blacklist KEY_WHOLE_FRAMES:Ljava/lang/String; = "whole-frames"

.field public static final blacklist KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final blacklist MF_PREPARE_BEG:I = 0x1ff

.field public static final blacklist MF_PREPARE_END:I = 0x200

.field public static final blacklist MF_RELEASE_BEG:I = 0x203

.field public static final blacklist MF_RELEASE_END:I = 0x204

.field public static final blacklist MF_RUN_BEG:I = 0x201

.field public static final blacklist MF_RUN_END:I = 0x202

.field public static final blacklist MUXER_CONFIGURE_DATA:I = 0x4

.field public static final blacklist OK:I = 0x0

.field public static final blacklist PAUSE_GRAPH:I = 0x386

.field public static final blacklist PROCESS_DATA:I = 0x385

.field public static final blacklist RELEASE_GRAPH:I = 0x388

.field public static final blacklist RELEASE_MEDIAFILTER_CONTROLLER:I = 0x38a

.field public static final blacklist REQUEST:I = 0x3df

.field public static final blacklist RESPONSE:I = 0x3e0

.field public static final blacklist RESUME_GRAPH:I = 0x387

.field public static final blacklist STARTED:I = 0x1f7

.field public static final blacklist STOPPED:I = 0x1f8

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TRACE_DATA:I = 0x7

.field public static final blacklist TRACK_FORMAT:I = 0x1

.field public static final blacklist WARN:I = 0x3e3

.field public static final blacklist WARN_CANCELED:I = 0x2be

.field public static final blacklist WARN_FILTER_OUT_CONTENT:I = 0x2bd

.field private static final blacklist _END_OF_ERROR_TYPE_:I = -0x3e7

.field private static final blacklist _END_OF_EVENT_TYPE_:I = 0x1f3

.field private static final blacklist _END_OF_INFO_TYPE_:I = 0x2bb

.field private static final blacklist _END_OF_MESSAGE_TYPE_:I = 0x3e7

.field private static final blacklist _END_OF_REQUEST_TYPE_:I = 0x3dd

.field private static final blacklist _END_OF_WARN_TYPE_:I = 0x383

.field private static final blacklist _START_OF_ERROR_TYPE_:I = -0x1

.field private static final blacklist _START_OF_EVENT_TYPE_:I = 0x0

.field private static final blacklist _START_OF_INFO_TYPE_:I = 0x1f4

.field private static final blacklist _START_OF_MESSAGE_TYPE_:I = 0x3de

.field private static final blacklist _START_OF_REQUEST_TYPE_:I = 0x384

.field private static final blacklist _START_OF_WARN_TYPE_:I = 0x2bc


# instance fields
.field protected blacklist bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

.field protected blacklist code:I

.field protected blacklist data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist exception:Ljava/lang/Exception;

.field protected blacklist extra:I

.field private blacklist messagePublisher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/message/MessagePublisher;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist replyTo:Landroid/os/Messenger;

.field private blacklist requestToReply:Z

.field private blacklist responseListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/Message;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/Message;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Message;->typeOf(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    return-void
.end method

.method constructor blacklist <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/message/Message;->isValidCode(II)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid code("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    iput p2, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Message;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    :cond_0
    const-string v1, "exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->extra:I

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    iget v0, p1, Lcom/samsung/android/sume/core/message/Message;->type:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    iget v0, p1, Lcom/samsung/android/sume/core/message/Message;->code:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    iget v0, p1, Lcom/samsung/android/sume/core/message/Message;->extra:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Message;->extra:I

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    iget-object p1, p1, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    return-void
.end method

.method public static blacklist isError(I)Z
    .locals 2

    const/16 v0, -0x3e7

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result p0

    return p0
.end method

.method public static blacklist isOk(I)Z
    .locals 3

    const/16 v0, 0x2bb

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x384

    const/16 v2, 0x3dd

    invoke-static {p0, v0, v2}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isValidCode(II)Z
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/sume/core/message/Message;->typeOf(I)I

    move-result p0

    const/16 p2, 0x3e1

    const/16 v0, 0x3e3

    const/16 v1, 0x3de

    if-eq p1, v1, :cond_2

    const/16 v2, 0x3e0

    if-eq p1, v2, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v1, v2, p2, v0}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x3e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, v1, v0, p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isWarn(I)Z
    .locals 2

    const/16 v0, 0x2bc

    const/16 v1, 0x383

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$isValidCode$0(ILjava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$isValidCode$1(ILjava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist typeOf(I)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3e1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sume/core/message/Message;->isWarn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x3e3

    return p0

    :cond_1
    const/16 v0, 0x1f4

    const/16 v1, 0x2bb

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x3e2

    return p0

    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x1f3

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x3de

    return p0

    :cond_3
    const/16 v0, 0x384

    const/16 v1, 0x3dd

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sume/core/Def;->isRangeIn(III)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x3df

    return p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid message code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public varargs blacklist containsAll([Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public varargs blacklist containsAny([Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sume/core/message/Message;->contentToString(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist contentToString(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "extra="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/sume/core/message/Message;->extra:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bundledDataHandler="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    filled-new-array {p1, p0, p2}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "\t"

    invoke-static {p1, p0}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist getBundledDataHandler()Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    return-object p0
.end method

.method public blacklist getCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    return p0
.end method

.method public blacklist getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public blacklist getResponseReceiver()Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    return-object p0
.end method

.method public blacklist isError()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    const/16 v1, 0x3e1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "status-code"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isErrorThen(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Message;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public blacklist isOk()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Message;->isOk(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "status-code"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isRequestToReply()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sume/core/message/Message;->requestToReply:Z

    return p0
.end method

.method public blacklist isWarn()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    const/16 v1, 0x3e3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Message;->isWarn(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "status-code"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method synthetic blacklist lambda$containsAll$2$com-samsung-android-sume-core-message-Message(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method synthetic blacklist lambda$containsAny$3$com-samsung-android-sume-core-message-Message(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method synthetic blacklist lambda$post$4$com-samsung-android-sume-core-message-Message(Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/message/Message;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "post: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to channel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist post()Lcom/samsung/android/sume/core/message/Message;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->messagePublisher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/message/MessagePublisher;->getChannels(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/message/Message$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p0
.end method

.method public blacklist put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist put(Ljava/util/Map;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist reply(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->responseListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/message/Message;

    const/16 v1, 0x3e0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist reply(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->responseListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/message/Message;

    const/16 v1, 0x3e0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist setBundledDataHandler(Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;)Lcom/samsung/android/sume/core/message/Message;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    return-object p0
.end method

.method public blacklist setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public blacklist setPublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->messagePublisher:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public blacklist setResponseReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Message;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    return-object p0
.end method

.method public blacklist then(Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Message;->messagePublisher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Message;->responseListener:Ljava/util/function/Consumer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/message/Message;->requestToReply:Z

    :cond_0
    return-object p0
.end method

.method public blacklist toAndroidMessage()Landroid/os/Message;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Message;->data:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Message;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/samsung/android/sume/core/message/Message;->code:I

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/samsung/android/sume/core/message/Message;->type:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/samsung/android/sume/core/message/Message;->extra:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Message;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;->accept(Landroid/os/Bundle;)V

    :cond_1
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Message;->contentToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
