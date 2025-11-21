.class public final Landroid/telephony/CellInfoLte;
.super Landroid/telephony/CellInfo;
.source "CellInfoLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellInfoLte"


# instance fields
.field private blacklist mCellConfig:Landroid/telephony/CellConfigLte;

.field private greylist-max-o mCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private greylist-max-o mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoLte$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellConfigLte;

    invoke-direct {v0}, Landroid/telephony/CellConfigLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    iput-object p5, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iput-object p6, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iput-object p7, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    sget-object v0, Landroid/telephony/CellConfigLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellConfigLte;

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellInfoLte;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->copy()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellConfigLte;

    iget-object p1, p1, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-direct {v0, p1}, Landroid/telephony/CellConfigLte;-><init>(Landroid/telephony/CellConfigLte;)V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellInfoLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v2, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, v2}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v2, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    iget-object p1, p1, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {p0, p1}, Landroid/telephony/CellConfigLte;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getCellConfig()Landroid/telephony/CellConfigLte;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-object p0
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityLte;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object p0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {p0}, Landroid/telephony/CellConfigLte;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/telephony/CellInfoLte;)V

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object v0
.end method

.method public blacklist setCellConfig(Landroid/telephony/CellConfigLte;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public greylist-max-p setCellIdentity(Landroid/telephony/CellIdentityLte;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-void
.end method

.method public greylist-max-p setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CellInfoLte:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityLte;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellConfigLte;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
