.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "MediaCrypto.java"


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    return-void
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 9

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p0, 0x10

    new-array p0, p0, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    rsub-int/lit8 v6, v4, 0x7

    mul-int/2addr v6, v5

    ushr-long v7, v0, v6

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    add-int/lit8 v5, v4, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 0

    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    move-result p0

    return p0
.end method

.method private static final native greylist-max-o isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_setup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    return-void
.end method

.method public final native whitelist release()V
.end method

.method public final native whitelist requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method

.method public final native whitelist setMediaDrmSession([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method
