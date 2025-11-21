.class public Lcom/samsung/android/media/mir/SemAudioThumbnail;
.super Ljava/lang/Object;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_ARG:I = -0x4

.field public static final whitelist ERROR_INVALID_PATH:I = -0x7

.field public static final whitelist ERROR_UNKNOWN:I = -0x1

.field public static final whitelist ERROR_UNSUPPORTED:I = -0x3

.field private static final blacklist SMAT_ERR:I = -0x1

.field private static final blacklist SMAT_ERR_INSUFF_MEM:I = -0x2

.field private static final blacklist SMAT_ERR_INVALID_ARG:I = -0x4

.field private static final blacklist SMAT_ERR_NOT_OPEN_FILE:I = -0x7

.field private static final blacklist SMAT_ERR_UNSUPPORT:I = -0x3

.field private static final blacklist SMAT_EXTRACT_DONE:I = 0x5

.field private static final blacklist SMAT_OK:I = 0x0

.field private static final blacklist SMAT_QUIT_DONE:I = 0x6

.field private static final blacklist SMAT_READY:I = 0x1

.field private static blacklist isNativeLibraryReady:Z = false


# instance fields
.field private blacklist lastError:I

.field private blacklist mHandle:I

.field private blacklist mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlastError(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInfo(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getInfo(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStat(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getStat(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "smat"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sput-boolean p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    goto :goto_0

    :catch_1
    sput-boolean p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    :goto_0
    return-void
.end method

.method private native blacklist deinit(I)I
.end method

.method private native blacklist extract(I)I
.end method

.method private native blacklist getInfo(I)J
.end method

.method private native blacklist getStat(I)I
.end method

.method private native blacklist init(Ljava/lang/String;I)I
.end method

.method private native blacklist initialize(Ljava/io/FileDescriptor;I)I
.end method

.method private blacklist sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    iput p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    new-instance p1, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;

    const-string p2, "SemAudioThumbnail thread"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->start()V

    return-void
.end method


# virtual methods
.method public whitelist checkFile(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist extract(Ljava/io/FileDescriptor;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3

    if-eqz p2, :cond_6

    const/4 v0, -0x4

    if-nez p1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->initialize(Ljava/io/FileDescriptor;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    if-ltz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;

    const-string v0, "SemAudioThumbnail thread"

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;->start()V

    return-void

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_3
    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    const/4 v1, -0x7

    if-eq p1, v1, :cond_5

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    :catch_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "listener is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist extract(Ljava/lang/String;ILcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3

    if-eqz p3, :cond_7

    const/4 v0, -0x7

    if-nez p1, :cond_0

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_1
    if-gez p2, :cond_2

    const/4 p1, -0x4

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    iput-object p3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    if-ltz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;

    const-string p2, "SemAudioThumbnail thread"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->start()V

    return-void

    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_4
    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    if-eq p1, v0, :cond_6

    const/4 p2, -0x3

    if-eq p1, p2, :cond_5

    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_6
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    :catch_1
    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "listener is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3

    if-eqz p2, :cond_6

    const/4 v0, -0x7

    if-nez p1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    if-ltz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;

    const-string v0, "SemAudioThumbnail thread"

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->start()V

    return-void

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_3
    iput p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    if-eq p1, v0, :cond_5

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    return-void

    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    :catch_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "listener is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
