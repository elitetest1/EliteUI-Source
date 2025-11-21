.class public final Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "Zuc256Engine.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;)V

    return-object v0
.end method
