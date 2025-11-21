.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field greylist dataSize:I

.field greylist key:Ljava/lang/String;

.field greylist-max-o mData:Landroid/app/backup/BackupDataInput;

.field greylist-max-o mOneByte:[B


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/backup/BackupDataInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    return-void
.end method


# virtual methods
.method public whitelist getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    :cond_0
    iget-object p0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    aget-byte p0, v0, v2

    return p0
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result p0

    return p0
.end method

.method public whitelist size()I
    .locals 0

    iget p0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    return p0
.end method
