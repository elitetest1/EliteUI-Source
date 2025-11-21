.class public final Lcom/android/internal/protolog/AutoClosableProtoInputStream;
.super Ljava/lang/Object;
.source "AutoClosableProtoInputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mFileInputStream:Ljava/io/FileInputStream;

.field private final blacklist mProtoInputStream:Landroid/util/proto/ProtoInputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/FileInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    iput-object p1, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-void
.end method

.method public blacklist get()Landroid/util/proto/ProtoInputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    return-object p0
.end method
