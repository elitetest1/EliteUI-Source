.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HD_AUDIO_ACQUIRED:I = 0x100

.field private static final blacklist FLAG_HD_SIS_ACQUIRED:I = 0x80

.field private static final greylist-max-o FLAG_LIVE:I = 0x1

.field private static final greylist-max-o FLAG_MUTED:I = 0x2

.field private static final blacklist FLAG_SIGNAL_ACQUIRED:I = 0x40

.field private static final greylist-max-o FLAG_STEREO:I = 0x20

.field private static final greylist-max-o FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final greylist-max-o FLAG_TRAFFIC_PROGRAM:I = 0x4

.field private static final greylist-max-o FLAG_TUNED:I = 0x10


# instance fields
.field private final blacklist mAlert:Landroid/hardware/radio/RadioAlert;

.field private final greylist-max-o mInfoFlags:I

.field private final greylist-max-o mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final greylist-max-o mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final greylist-max-o mRelatedContent:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final greylist-max-o mSignalQuality:I

.field private final greylist-max-o mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;II",
            "Landroid/hardware/radio/RadioMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;II",
            "Landroid/hardware/radio/RadioMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/radio/RadioAlert;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ProgramSelector;

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iput-object p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    if-nez p4, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const-string p1, "relatedContent"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    :goto_0
    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez p8, :cond_1

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iput-object p8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iput-object p9, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/radio/RadioAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert;

    :cond_0
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    return-void

    :cond_1
    iput-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    return-void
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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v1, v3}, Landroid/hardware/radio/ProgramSelector;->strictEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    iget v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v3, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    iget-object p1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    return v0
.end method

.method public whitelist getAlert()Landroid/hardware/radio/RadioAlert;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    return-object p0
.end method

.method public whitelist getChannel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    const-string p0, "BroadcastRadio.manager"

    const-string v0, "Not an AM/FM program"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public whitelist getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object p0
.end method

.method public whitelist getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public whitelist getRelatedContent()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    return-object p0
.end method

.method public whitelist getSelector()Landroid/hardware/radio/ProgramSelector;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object p0
.end method

.method public whitelist getSignalStrength()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    return p0
.end method

.method public whitelist getSubChannel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getVendorInfo()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 10

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v8, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v9, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget v4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isDigital()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isHdAudioAvailable()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isHdSisAvailable()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isLive()Z
    .locals 1

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isMuted()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isSignalAcquired()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isStereo()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isTrafficAnnouncementActive()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isTrafficProgram()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isTuned()Z
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramInfo [selector="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", physicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", infoFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signalQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", alert="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeTypedCollection(Landroid/os/Parcel;Ljava/util/Collection;)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/radio/Flags;->hdRadioEmergencyAlertSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mAlert:Landroid/hardware/radio/RadioAlert;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method
