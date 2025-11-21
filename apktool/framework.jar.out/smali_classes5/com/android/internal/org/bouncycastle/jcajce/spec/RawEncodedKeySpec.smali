.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/RawEncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "RawEncodedKeySpec.java"


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "RAW"

    return-object p0
.end method
