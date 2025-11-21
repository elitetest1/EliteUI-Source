.class public final Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SystemSelectionSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBands:[I

.field private blacklist mEarfcns:[I

.field private blacklist mMccMnc:Ljava/lang/String;

.field private blacklist mSatelliteInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIds:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBands(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mBands:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEarfcns(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mEarfcns:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMccMnc(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mMccMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteInfos(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mSatelliteInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTagIds(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mTagIds:[I

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SystemSelectionSpecifier;
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SystemSelectionSpecifier;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;-><init>(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)V

    return-object v0
.end method

.method public blacklist setBands([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mBands:[I

    return-object p0
.end method

.method public blacklist setEarfcns([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mEarfcns:[I

    return-object p0
.end method

.method public blacklist setMccMnc(Ljava/lang/String;)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mMccMnc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteInfos(Ljava/util/List;)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;)",
            "Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mSatelliteInfos:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setTagIds([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mTagIds:[I

    return-object p0
.end method
