.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;
.super Ljava/lang/Object;
.source "IESKEMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist recipientInfo:[B

.field private final blacklist usePointCompression:Z


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return-void
.end method


# virtual methods
.method public blacklist getRecipientInfo()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasUsePointCompression()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return p0
.end method
