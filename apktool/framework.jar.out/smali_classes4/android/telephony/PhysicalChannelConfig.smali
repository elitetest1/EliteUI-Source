.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$Builder;,
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist BAND_UNKNOWN:I = 0x0

.field public static final whitelist CELL_BANDWIDTH_UNKNOWN:I = 0x0

.field public static final whitelist CHANNEL_NUMBER_UNKNOWN:I = 0x7fffffff

.field public static final whitelist CONNECTION_PRIMARY_SERVING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTION_SECONDARY_SERVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTION_UNKNOWN:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FREQUENCY_UNKNOWN:I = -0x1

.field public static final whitelist PHYSICAL_CELL_ID_MAXIMUM_VALUE:I = 0x3ef

.field public static final whitelist PHYSICAL_CELL_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mBand:I

.field private greylist-max-o mCellBandwidthDownlinkKhz:I

.field private blacklist mCellBandwidthUplinkKhz:I

.field private greylist-max-o mCellConnectionStatus:I

.field private blacklist mContextIds:[I

.field private blacklist mDownlinkChannelNumber:I

.field private blacklist mDownlinkFrequency:I

.field private blacklist mFrequencyRange:I

.field private blacklist mNetworkType:I

.field private blacklist mPhysicalCellId:I

.field private blacklist mUplinkChannelNumber:I

.field private blacklist mUplinkFrequency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez p1, :cond_0

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellConnectionStatus(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthDownlinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthUplinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmNetworkType(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmDownlinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmUplinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmFrequencyRange(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmContextIds(Landroid/telephony/PhysicalChannelConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmPhysicalCellId(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmBand(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result p1

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget p1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-nez p1, :cond_0

    iget p1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    :cond_0
    iget p1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez p1, :cond_1

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V

    return-void
.end method

.method private greylist-max-o getConnectionStatusString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SecondaryServing"

    return-object p0

    :cond_1
    const-string p0, "PrimaryServing"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method private blacklist setDownlinkFrequency()V
    .locals 3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :cond_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return-void

    :cond_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v1, v2}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return-void

    :cond_2
    :pswitch_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v1, v2}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return-void

    :cond_3
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v1, v2}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setFrequencyRange()V
    .locals 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromNrBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromEutranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_0

    :cond_3
    :pswitch_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromUtranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_0

    :cond_4
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromGeranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    :goto_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeFromArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setUplinkFrequency()V
    .locals 3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :cond_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return-void

    :cond_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return-void

    :cond_2
    :pswitch_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return-void

    :cond_3
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;
    .locals 1

    new-instance v0, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v0, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>(Landroid/telephony/PhysicalChannelConfig;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object p0

    return-object p0
.end method

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
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/PhysicalChannelConfig;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    iget-object v3, p1, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    iget v3, p1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    iget p1, p1, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getBand()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    return p0
.end method

.method public whitelist getCellBandwidthDownlinkKhz()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return p0
.end method

.method public whitelist getCellBandwidthUplinkKhz()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    return p0
.end method

.method public whitelist getConnectionStatus()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return p0
.end method

.method public blacklist getContextIds()[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    return-object p0
.end method

.method public whitelist getDownlinkChannelNumber()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    return p0
.end method

.method public whitelist getDownlinkFrequencyKhz()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return p0
.end method

.method public blacklist getFrequencyRange()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    return p0
.end method

.method public whitelist getNetworkType()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    return p0
.end method

.method public whitelist getPhysicalCellId()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return p0
.end method

.method public whitelist getUplinkChannelNumber()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    return p0
.end method

.method public whitelist getUplinkFrequencyKhz()I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 13

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mConnectionStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCellBandwidthDownlinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mCellBandwidthUplinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mDownlinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mUplinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mContextIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mPhysicalCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mDownlinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mUplinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
