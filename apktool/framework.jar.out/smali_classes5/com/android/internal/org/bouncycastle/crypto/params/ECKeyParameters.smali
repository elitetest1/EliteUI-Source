.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field private final blacklist parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor blacklist <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'parameters\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->parameters:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object p0
.end method
