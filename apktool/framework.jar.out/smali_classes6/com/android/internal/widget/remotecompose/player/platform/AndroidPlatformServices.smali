.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;
.super Ljava/lang/Object;
.source "AndroidPlatformServices.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist androidPathToFloatArray(Landroid/graphics/Path;)[F
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Path;->getPathIterator()Landroid/graphics/PathIterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->getPathIterator()Landroid/graphics/PathIterator;

    mul-int/lit8 v1, v1, 0xa

    new-array p1, v1, [F

    move v1, v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->DONE_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CLOSE_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CUBIC_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CONIC_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_4
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->QUADRATIC_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_5
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->LINE_NAN:F

    aput v4, p1, v1

    goto :goto_2

    :pswitch_6
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    aput v4, p1, v1

    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/PathIterator$Segment;->getPoints()[F

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    add-int/lit8 v7, v1, 0x1

    aput v6, p1, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_4

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Landroid/graphics/PathIterator$Segment;->getConicWeight()F

    move-result v2

    aput v2, p1, v1

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getImageHeight(Ljava/lang/Object;)I
    .locals 0

    instance-of p0, p1, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getImageWidth(Ljava/lang/Object;)I
    .locals 0

    instance-of p0, p1, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist imageToByteArray(Ljava/lang/Object;)[B
    .locals 2

    instance-of p0, p1, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isAlpha8Image(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist log(Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$Platform$LogCategory:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const-string v0, "RemoteCompose"

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist pathToFloatArray(Ljava/lang/Object;)[F
    .locals 1

    instance-of v0, p1, Landroid/graphics/Path;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/Path;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;->androidPathToFloatArray(Landroid/graphics/Path;)[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
