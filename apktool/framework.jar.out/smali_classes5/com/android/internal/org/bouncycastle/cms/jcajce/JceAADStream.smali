.class Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;
.super Ljava/io/OutputStream;
.source "JceAADStream.java"


# static fields
.field private static final blacklist SINGLE_BYTE:[B


# instance fields
.field private blacklist cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    return-void
.end method

.method constructor blacklist <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method
