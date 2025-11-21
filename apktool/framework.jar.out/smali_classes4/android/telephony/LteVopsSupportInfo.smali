.class public final Landroid/telephony/LteVopsSupportInfo;
.super Landroid/telephony/VopsSupportInfo;
.source "LteVopsSupportInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LteVopsSupportInfo$LteVopsStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LteVopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LTE_STATUS_NOT_AVAILABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LTE_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final whitelist LTE_STATUS_SUPPORTED:I = 0x2


# instance fields
.field private final blacklist mEmcBearerSupport:I

.field private final blacklist mVopsSupport:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/LteVopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/LteVopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/LteVopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    iput p1, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    iput p2, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/LteVopsSupportInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/LteVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/LteVopsSupportInfo;
    .locals 1

    new-instance v0, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v0, p0}, Landroid/telephony/LteVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/telephony/LteVopsSupportInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/telephony/LteVopsSupportInfo;

    iget v2, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    iget v3, p1, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    iget p1, p1, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist getEmcBearerSupport()I
    .locals 0

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return p0
.end method

.method public whitelist getVopsSupport()I
    .locals 0

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isEmergencyServiceFallbackSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isEmergencyServiceSupported()Z
    .locals 1

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isVopsSupported()Z
    .locals 1

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LteVopsSupportInfo :  mVopsSupport = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmcBearerSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/VopsSupportInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget p2, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
