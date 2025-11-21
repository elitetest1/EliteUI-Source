.class public final Landroid/media/projection/MediaProjectionConfig$Builder;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInitialSelection:I

.field private blacklist mOptions:I

.field private blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Flag FLAG_APP_CONTENT_SHARING disabled"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist build()Landroid/media/projection/MediaProjectionConfig;
    .locals 6

    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    iget-object v2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    iget v4, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;IILandroid/media/projection/MediaProjectionConfig-IA;)V

    return-object v0
.end method

.method public blacklist setInitiallySelectedSource(I)Landroid/media/projection/MediaProjectionConfig$Builder;
    .locals 4

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "projectionSource is no a valid projection source. projectionSource must be one of %s but was %s"

    invoke-virtual {v0, p1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setRequesterHint(Ljava/lang/String;)Landroid/media/projection/MediaProjectionConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;
    .locals 1

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetVALID_PROJECTION_SOURCES()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "source is no a valid projection source. source must be any of %s but was %s"

    invoke-virtual {p2, p1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
