.class public Landroid/content/pm/SignedPackage;
.super Ljava/lang/Object;
.source "SignedPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mData:Landroid/content/pm/SignedPackageParcel;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/SignedPackageParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/SignedPackageParcel;-><init>()V

    iput-object p1, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iput-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/pm/SignedPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/content/pm/SignedPackage;

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p0, p0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iget-object p1, p1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p1, p1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getCertificateDigest()[B
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p0, p0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    return-object p0
.end method

.method public final blacklist getData()Landroid/content/pm/SignedPackageParcel;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p0, p0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object p0, p0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
