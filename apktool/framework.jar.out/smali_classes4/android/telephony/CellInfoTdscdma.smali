.class public final Landroid/telephony/CellInfoTdscdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellInfoTdscdma"


# instance fields
.field private blacklist mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

.field private blacklist mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    iput-object p5, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iput-object p6, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityTdscdma;

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoTdscdma;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityTdscdma;->copy()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object p1, p1, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellInfoTdscdma"

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

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    check-cast p1, Landroid/telephony/CellInfoTdscdma;

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object v2, p1, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0, v2}, Landroid/telephony/CellIdentityTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object p1, p1, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityTdscdma;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-object p0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/telephony/CellInfoTdscdma;)V

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-object v0
.end method

.method public blacklist setCellIdentity(Landroid/telephony/CellIdentityTdscdma;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-void
.end method

.method public blacklist setCellSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CellInfoTdscdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
