.class public Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;
.super Ljava/io/IOException;
.source "PKCSIOException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
