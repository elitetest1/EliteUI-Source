.class public final Landroid/security/attestationverification/VerificationToken$Builder;
.super Ljava/lang/Object;
.source "VerificationToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mHmac:[B

.field private blacklist mLocalBindingType:I

.field private blacklist mRequirements:Landroid/os/Bundle;

.field private blacklist mVerificationResult:I

.field private blacklist mVerificationTime:Ljava/time/Instant;


# direct methods
.method public constructor blacklist <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    const-class p1, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    const-class p1, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResultFlags;

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist build()Landroid/security/attestationverification/VerificationToken;
    .locals 9

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    new-instance v2, Landroid/security/attestationverification/VerificationToken;

    iget-object v3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    iget v4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    iget-object v5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    iget v6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    iget-object v7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    iget-object v8, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    invoke-direct/range {v2 .. v8}, Landroid/security/attestationverification/VerificationToken;-><init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[B)V

    return-object v2
.end method

.method public blacklist setAttestationProfile(Landroid/security/attestationverification/AttestationProfile;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    return-object p0
.end method

.method public varargs blacklist setHmac([B)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    return-object p0
.end method

.method public blacklist setLocalBindingType(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    return-object p0
.end method

.method public blacklist setRequirements(Landroid/os/Bundle;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setVerificationResult(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    return-object p0
.end method

.method public blacklist setVerificationTime(Ljava/time/Instant;)Landroid/security/attestationverification/VerificationToken$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    return-object p0
.end method
