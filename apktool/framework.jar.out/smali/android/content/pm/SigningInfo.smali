.class public final Landroid/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningInfo$AppSigningSchemeVersion;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VERSION_JAR:I = 0x1

.field public static final whitelist VERSION_SIGNING_BLOCK_V2:I = 0x2

.field public static final whitelist VERSION_SIGNING_BLOCK_V3:I = 0x3

.field public static final whitelist VERSION_SIGNING_BLOCK_V4:I = 0x4


# instance fields
.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/SigningInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SigningInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/Signature;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/content/pm/Signature;

    goto :goto_1

    :cond_2
    move-object p4, v0

    :goto_1
    invoke-static {p2, p4}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p4, v0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :cond_4
    new-instance p3, Landroid/content/pm/SigningDetails;

    invoke-direct {p3, p2, p1, v0, p4}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object p3, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void

    :cond_5
    :goto_2
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/SigningInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object p1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SigningInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getApkContentsSigners()[Landroid/content/pm/Signature;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPublicKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSchemeVersion()I
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p0

    return p0
.end method

.method public whitelist getSigningCertificateHistory()[Landroid/content/pm/Signature;
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public whitelist hasMultipleSigners()Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasPastSigningCertificates()Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist signersMatchExactly(Landroid/content/pm/SigningInfo;)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object p1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
