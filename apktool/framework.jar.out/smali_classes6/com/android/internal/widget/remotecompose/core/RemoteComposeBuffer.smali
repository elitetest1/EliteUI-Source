.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
.super Ljava/lang/Object;
.source "RemoteComposeBuffer.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EASING_CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist EASING_CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist EASING_CUBIC_CUSTOM:I = 0xb

.field public static final blacklist EASING_CUBIC_DECELERATE:I = 0x3

.field public static final blacklist EASING_CUBIC_LINEAR:I = 0x4

.field public static final blacklist EASING_CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist EASING_CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASING_EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASING_EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist EASING_SPLINE_CUSTOM:I = 0xc

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field private blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

.field private blacklist mGeneratedComponentId:I

.field private blacklist mLastComponentId:I

.field private blacklist mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

.field private final blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-void
.end method

.method public static blacklist fromFile(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object v0
.end method

.method public static blacklist fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object v0
.end method

.method private blacklist getComponentId(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    return p1
.end method

.method public static blacklist packAnimation(FI[FFF)[F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object p0

    return-object p0
.end method

.method static blacklist read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    array-length v0, p0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reset(I)V

    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    array-length p0, p0

    iput p0, p1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    :cond_0
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v2

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static blacklist readNextOperation(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown operation encountered "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist storeBitmap(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v0

    int-to-short v4, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v0

    int-to-short v6, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->isAlpha8Image(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v2, v4, v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    return v2

    :cond_1
    return v0
.end method

.method static blacklist version()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "v1.0"

    return-object v0
.end method


# virtual methods
.method public varargs blacklist addAnimatedFloat([F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist addAnimatedFloat([F[F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist addBitmap(Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist addBitmap(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist addBitmapFont([Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V

    return v0
.end method

.method public blacklist addBoolean(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V

    return v0
.end method

.method public blacklist addBoxStart(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    return-void
.end method

.method public blacklist addCanvasContentStart(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addCanvasOperationsStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addCanvasStart(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CanvasLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 10

    move-object/from16 v0, p7

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p2

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    :cond_1
    move v9, v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    return-void
.end method

.method public blacklist addClipPath(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addClipRect(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addClipRectModifier()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addCollapsibleColumnStart(IIIIF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method

.method public blacklist addCollapsibleRowStart(IIIIF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleRowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method

.method public blacklist addColor(I)I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;-><init>(II)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->mColorId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(FFF)S
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IFFF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(FFFF)S
    .locals 7

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(IFFF)S
    .locals 7

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(IIF)S
    .locals 6

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(ISF)S
    .locals 6

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(SIF)S
    .locals 6

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColorExpression(SSF)S
    .locals 6

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x3

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return p1
.end method

.method public blacklist addColumnStart(IIIIF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method

.method public blacklist addComponentHeightValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return-void
.end method

.method public blacklist addComponentStart(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addComponentStart(II)V

    return-void
.end method

.method public blacklist addComponentStart(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method

.method public blacklist addComponentWidthValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return-void
.end method

.method public blacklist addConditionalOperations(BFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    return-void
.end method

.method public blacklist addContainerEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addContentStart()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addDebugMessage(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DebugMessage;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFI)V

    return-void
.end method

.method public blacklist addDrawArc(FFFFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    return-void
.end method

.method public blacklist addDrawBitmap(IFFFFLjava/lang/String;)V
    .locals 7

    if-eqz p6, :cond_0

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move v6, p6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist addDrawBitmap(IFFLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move v8, p4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    int-to-float v6, v0

    int-to-float v7, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist addDrawBitmap(Ljava/lang/Object;FFFFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawBitmap(IFFFFLjava/lang/String;)V

    return-void
.end method

.method public blacklist addDrawBitmapFontTextRun(IIIIFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    return-void
.end method

.method public blacklist addDrawCircle(FFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    return-void
.end method

.method public blacklist addDrawLine(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawOval(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawPath(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addDrawPath(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawPath(I)V

    return-void
.end method

.method public blacklist addDrawRect(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawRoundRect(FFFFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    return-void
.end method

.method public blacklist addDrawSector(FFFFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    return-void
.end method

.method public blacklist addDrawTextOnPath(ILjava/lang/Object;FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method

.method public blacklist addDrawTextOnPath(Ljava/lang/String;Ljava/lang/Object;FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method

.method public blacklist addDrawTextRun(IIIIIFFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method

.method public blacklist addDrawTextRun(Ljava/lang/String;IIIIFFZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method

.method public blacklist addDrawTweenPath(IIFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    return-void
.end method

.method public blacklist addDrawTweenPath(Ljava/lang/Object;Ljava/lang/Object;FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    move p1, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    move p2, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawTweenPath(IIFFF)V

    return-void
.end method

.method public blacklist addEndFloatFunctionDef()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addFitBoxStart(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    return-void
.end method

.method public blacklist addFloat(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist addFloatArray([F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist addFloatList([F)F
    .locals 6

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v5, p1, v2

    invoke-static {v4, v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addList([I)F

    move-result p0

    return p0
.end method

.method public blacklist addFloatMap([Ljava/lang/String;[F)F
    .locals 7

    array-length v0, p2

    new-array v1, v0, [I

    array-length v2, p2

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v4

    aput v4, v1, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v6, p2, v3

    invoke-static {v5, v4, v6}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addMap([Ljava/lang/String;[B[I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public blacklist addHeader(IILjava/lang/String;FJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    :cond_0
    return-void
.end method

.method public blacklist addHeader([S[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist addImage(IIIIF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method

.method public blacklist addImpulse(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addImpulseEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addImpulseProcess()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addInteger(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheInteger(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    return v0
.end method

.method public blacklist addIntegerExpression(I[I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    return v0
.end method

.method public blacklist addList([I)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist addLong(J)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V

    return v0
.end method

.method public blacklist addLoopEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addLoopStart(IFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    return-void
.end method

.method public blacklist addMap([Ljava/lang/String;[B[I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    return v0
.end method

.method public blacklist addMatrixRestore()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addMatrixRotate(FFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    return-void
.end method

.method public blacklist addMatrixSave()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addMatrixScale(FF)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addMatrixScale(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addMatrixSkew(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addMatrixTranslate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addModifierBackground(II)V
    .locals 12

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v8, v0, v1

    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float v9, v0, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float v10, p1, v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, p2

    invoke-static/range {v2 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V

    return-void
.end method

.method public blacklist addModifierBorder(FFII)V
    .locals 15

    move/from16 v0, p3

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v10, v1, v2

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v11, v1, v2

    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float v12, v1, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v13, v0, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v14, p4

    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V

    return-void
.end method

.method public blacklist addModifierGraphicsLayer(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/HashMap;)V

    return-void
.end method

.method public blacklist addModifierMarquee(IIFFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    return-void
.end method

.method public blacklist addModifierOffset(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addModifierPadding(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addModifierRipple()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addModifierScroll(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addModifierScroll(IF)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v0

    if-eqz p1, :cond_0

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, p1, p2, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    const/4 p1, 0x3

    new-array v7, p1, [F

    const/4 p1, 0x0

    aput v1, v7, p1

    const/high16 p1, -0x40800000    # -1.0f

    const/4 v0, 0x1

    aput p1, v7, v0

    sget p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    const/4 v0, 0x2

    aput p1, v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    iget-object p0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addModifierScroll(IFI)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v0

    if-eqz p1, :cond_0

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, p1, p2, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    const/4 p1, 0x3

    new-array v7, p1, [F

    const/4 p1, 0x0

    aput v1, v7, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    aput v1, v7, v2

    sget v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    const/4 v3, 0x2

    aput v1, v7, v3

    int-to-float p3, p3

    new-array v9, v3, [F

    aput p3, v9, p1

    aput v0, v9, v2

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x3

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    iget-object p0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addModifierZIndex(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    return-void
.end method

.method public blacklist addPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    return-void
.end method

.method public blacklist addParticleLoopEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addParticles(I[I[[FI)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    return-void
.end method

.method public blacklist addParticlesLoop(I[F[[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    return-void
.end method

.method public blacklist addPathData(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->pathToFloatArray(Ljava/lang/Object;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    return p1
.end method

.method public blacklist addRootStart()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addRoundClipRectModifier(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addRowStart(IIIIF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method

.method public blacklist addRunActionsStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addStateLayout(IIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    return-void
.end method

.method public blacklist addText(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public blacklist addTextComponentStart(IIIIFIFLjava/lang/String;III)V
    .locals 12

    move-object/from16 v0, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    move v8, p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    return-void
.end method

.method public blacklist addTouchExpression(FFFFI[FI[F[F)F
    .locals 11

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    return v1
.end method

.method public blacklist addTouchExpression(FFFFFI[FI[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-static/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    return-void
.end method

.method public blacklist asFloatId(I)F
    .locals 0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist bitmapAttribute(IS)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist callFloatFunction(I[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    return-void
.end method

.method blacklist copy()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object p0

    return-object p0
.end method

.method blacklist copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;",
            ")",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/Operation;

    iget-object v0, p2, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public blacklist createID(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result p0

    return p0
.end method

.method public blacklist createTextFromFloat(FSSI)I
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    move v3, v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    return v3
.end method

.method public blacklist createTextId(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist defineFloatFunction(I[I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    return-void
.end method

.method public blacklist drawBitmap(Ljava/lang/Object;IIIIIIIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result p1

    if-eqz p12, :cond_0

    invoke-virtual {p0, p12}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move p3, p10

    move p10, p2

    move p2, p4

    move p4, p6

    move p6, p8

    move p8, p3

    move p3, p5

    move p5, p7

    move p7, p9

    move p9, p11

    invoke-static/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    return-void
.end method

.method public blacklist drawComponentContent()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist drawScaledBitmap(IFFFFFFFFIFLjava/lang/String;)V
    .locals 14

    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    return-void
.end method

.method public blacklist drawScaledBitmap(Ljava/lang/Object;FFFFFFFFIFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result p1

    if-eqz p12, :cond_0

    invoke-virtual {p0, p12}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p12

    goto :goto_0

    :cond_0
    const/4 p12, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    return-void
.end method

.method public blacklist drawTextAnchored(IFFFFI)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist drawTextAnchored(Ljava/lang/String;FFFFI)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist fromFile(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object p0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-object p0
.end method

.method public blacklist getColorAttribute(IS)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist getLastComponentId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    return p0
.end method

.method public blacklist getPlatform()Lcom/android/internal/widget/remotecompose/core/Platform;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-object p0
.end method

.method public blacklist header(IILjava/lang/String;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->header(IILjava/lang/String;FJ)V

    return-void
.end method

.method public blacklist header(IILjava/lang/String;FJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    :cond_0
    return-void
.end method

.method public blacklist inflateFromBuffer(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown operation encountered "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public blacklist mapLookup(II)I
    .locals 3

    mul-int/lit8 v0, p2, 0x21

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return v0

    :cond_0
    return v1
.end method

.method public blacklist nextId()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result p0

    return p0
.end method

.method public varargs blacklist pathAppend(I[F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    return-void
.end method

.method public blacklist pathCombine(IIIB)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V

    return-void
.end method

.method public blacklist pathCreate(FF)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    return v0
.end method

.method public blacklist pathTween(IIF)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/PathTween;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIF)V

    return v0
.end method

.method public blacklist performHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist reserveFloatVariable()F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist reset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    return-void
.end method

.method public blacklist setBitmapName(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-void
.end method

.method public blacklist setNamedVariable(ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    return-void
.end method

.method public blacklist setPlatform(Lcom/android/internal/widget/remotecompose/core/Platform;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist textAttribute(IS)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist textLength(I)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->id()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist textLookup(FF)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIF)V

    return v0
.end method

.method public blacklist textLookup(FI)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return v0
.end method

.method public blacklist textMeasure(II)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    mul-int/lit8 v1, p2, 0x1f

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist textMerge(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return v0
.end method

.method public varargs blacklist timeAttribute(IS[I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p0

    return p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;Ljava/io/File;)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getBuffer()[B

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
