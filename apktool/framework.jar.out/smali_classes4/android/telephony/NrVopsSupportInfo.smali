.class public final Landroid/telephony/NrVopsSupportInfo;
.super Landroid/telephony/VopsSupportInfo;
.source "NrVopsSupportInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NrVopsSupportInfo$NrEmfStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrEmcStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrVopsStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NrVopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NR_STATUS_EMC_5GCN_ONLY:I = 0x1

.field public static final whitelist NR_STATUS_EMC_EUTRA_5GCN_ONLY:I = 0x2

.field public static final whitelist NR_STATUS_EMC_NOT_SUPPORTED:I = 0x0

.field public static final whitelist NR_STATUS_EMC_NR_EUTRA_5GCN:I = 0x3

.field public static final whitelist NR_STATUS_EMF_5GCN_ONLY:I = 0x1

.field public static final whitelist NR_STATUS_EMF_EUTRA_5GCN_ONLY:I = 0x2

.field public static final whitelist NR_STATUS_EMF_NOT_SUPPORTED:I = 0x0

.field public static final whitelist NR_STATUS_EMF_NR_EUTRA_5GCN:I = 0x3

.field public static final whitelist NR_STATUS_VOPS_3GPP_SUPPORTED:I = 0x1

.field public static final whitelist NR_STATUS_VOPS_NON_3GPP_SUPPORTED:I = 0x2

.field public static final whitelist NR_STATUS_VOPS_NOT_SUPPORTED:I


# instance fields
.field private final blacklist mEmcSupport:I

.field private final blacklist mEmfSupport:I

.field private final blacklist mVopsSupport:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/NrVopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/NrVopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NrVopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    iput p1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    iput p2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    iput p3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/NrVopsSupportInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;
    .locals 1

    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    invoke-direct {v0, p0}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

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

    instance-of v1, p1, Landroid/telephony/NrVopsSupportInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/telephony/NrVopsSupportInfo;

    iget v2, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    iget v3, p1, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    iget v3, p1, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    iget p1, p1, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist getEmcSupport()I
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    return p0
.end method

.method public whitelist getEmfSupport()I
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return p0
.end method

.method public whitelist getVopsSupport()I
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isEmergencyServiceFallbackSupported()Z
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isEmergencyServiceSupported()Z
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isVopsSupported()Z
    .locals 0

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

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

    const-string v1, "NrVopsSupportInfo :  mVopsSupport = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmcSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmfSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/VopsSupportInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget p2, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
