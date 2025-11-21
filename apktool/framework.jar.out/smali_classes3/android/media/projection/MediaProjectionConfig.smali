.class public final Landroid/media/projection/MediaProjectionConfig;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionConfig$Builder;,
        Landroid/media/projection/MediaProjectionConfig$MediaProjectionSource;,
        Landroid/media/projection/MediaProjectionConfig$CaptureRegion;
    }
.end annotation


# static fields
.field public static final blacklist CAPTURE_REGION_FIXED_DISPLAY:I = 0x1

.field public static final blacklist CAPTURE_REGION_USER_CHOICE:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_PROJECTION_SOURCES:I = 0xa

.field private static final blacklist PROJECTION_SOURCES:[I

.field private static final blacklist PROJECTION_SOURCES_STRING:[Ljava/lang/String;

.field public static final blacklist PROJECTION_SOURCE_APP:I = 0x8

.field public static final blacklist PROJECTION_SOURCE_APP_CONTENT:I = 0x10

.field public static final blacklist PROJECTION_SOURCE_DISPLAY:I = 0x2

.field public static final blacklist PROJECTION_SOURCE_DISPLAY_REGION:I = 0x4

.field private static final blacklist VALID_PROJECTION_SOURCES:I


# instance fields
.field private final blacklist mDisplayToCapture:I

.field private final blacklist mInitialSelection:I

.field private final blacklist mProjectionSources:I

.field private blacklist mRegionToCapture:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES()[I
    .locals 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVALID_PROJECTION_SOURCES()I
    .locals 1

    sget v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprojectionSourceToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    const-string v0, "PROJECTION_SOURCE_APP"

    const-string v1, "PROJECTION_SOURCE_APP_CONTENT"

    const-string v2, "PROJECTION_SOURCE_DISPLAY"

    const-string v3, "PROJECTION_SOURCE_DISPLAY_REGION"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->createValidSourcesMask()I

    move-result v0

    sput v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    new-instance v0, Landroid/media/projection/MediaProjectionConfig$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Flag FLAG_APP_CONTENT_SHARING enabled. This method must not be called."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    :goto_0
    iput-object p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    iput p3, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iput p4, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Flag FLAG_APP_CONTENT_SHARING disabled. This method must not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;IILandroid/media/projection/MediaProjectionConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return-void
.end method

.method private static blacklist captureRegionToString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CAPTURE_REGION_GIVEN_DISPLAY"

    return-object p0

    :cond_1
    const-string p0, "CAPTURE_REGION_USERS_CHOICE"

    return-object p0
.end method

.method public static whitelist createConfigForDefaultDisplay()Landroid/media/projection/MediaProjectionConfig;
    .locals 3

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/media/projection/MediaProjectionConfig$Builder;->setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method public static whitelist createConfigForUserChoice()Landroid/media/projection/MediaProjectionConfig;
    .locals 2

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method private static blacklist createValidSourcesMask()I
    .locals 5

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private static blacklist projectionSourceToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    and-int/2addr v3, p0

    if-lez v3, :cond_0

    sget-object v3, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v1

    not-int v2, v2

    and-int/2addr p0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    const-string v1, "Unknown projection sources: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/media/projection/MediaProjectionConfig;

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v3, p1, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v2, v3, :cond_4

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    iget p1, p1, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getDisplayToCapture()I
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    return p0
.end method

.method public blacklist getInitiallySelectedSource()I
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return p0
.end method

.method public blacklist getProjectionSources()I
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    return p0
.end method

.method public blacklist getRegionToCapture()I
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    return p0
.end method

.method public blacklist getRequesterHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isSourceEnabled(I)Z
    .locals 0

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v2}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "MediaProjectionConfig{mInitialSelection=%d, mDisplayToCapture=%d, mProjectionSource=%s, mRequesterHint=\'%s\'}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaProjectionConfig { displayToCapture = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regionToCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    invoke-static {p0}, Landroid/media/projection/MediaProjectionConfig;->captureRegionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget p0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
