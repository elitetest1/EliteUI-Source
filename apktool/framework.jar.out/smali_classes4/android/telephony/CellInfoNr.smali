.class public final Landroid/telephony/CellInfoNr;
.super Landroid/telephony/CellInfo;
.source "CellInfoNr.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CellInfoNr"


# instance fields
.field private blacklist mCellIdentity:Landroid/telephony/CellIdentityNr;

.field private final blacklist mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoNr$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityNr;

    invoke-direct {v0}, Landroid/telephony/CellIdentityNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    iput-object p5, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iput-object p6, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    iput-object p1, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellInfoNr-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/CellInfoNr;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    :goto_0
    iput-object p2, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object p1, p1, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iput-object p1, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoNr;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/CellInfoNr;

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object v2, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0, v2}, Landroid/telephony/CellIdentityNr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iget-object p1, p1, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    return-object p0
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentityNr;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    return-object p0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-object p0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthNr;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .locals 2

    new-instance v0, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/telephony/CellInfoNr;Z)V

    return-object v0
.end method

.method public blacklist setCellIdentity(Landroid/telephony/CellIdentityNr;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfoNr:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityNr;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
