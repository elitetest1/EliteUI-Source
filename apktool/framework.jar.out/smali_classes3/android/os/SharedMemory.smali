.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Closer;,
        Landroid/os/SharedMemory$Unmapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROT_MASK:I


# instance fields
.field private greylist-max-o mCleaner:Lsun/misc/Cleaner;

.field private final greylist-max-o mFileDescriptor:Ljava/io/FileDescriptor;

.field private final greylist-max-o mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/FileDescriptor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-lez v0, :cond_0

    new-instance v1, Landroid/os/SharedMemory$MemoryRegistration;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory-IA;)V

    iput-object v1, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    new-instance v0, Landroid/os/SharedMemory$Closer;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-direct {v0, v3, v1, v2}, Landroid/os/SharedMemory$Closer;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    invoke-static {p1, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private greylist-max-o checkOpen()V
    .locals 1

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SharedMemory is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    if-lez p1, :cond_0

    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance p0, Landroid/os/SharedMemory;

    invoke-direct {p0, v0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object p0
.end method

.method private static native greylist-max-o nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native greylist-max-o nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static whitelist unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o validateProt(I)V
    .locals 1

    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid prot value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getFd()I
    .locals 0

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    return p0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public whitelist getSize()I
    .locals 0

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    iget p0, p0, Landroid/os/SharedMemory;->mSize:I

    return p0
.end method

.method public whitelist map(III)Ljava/nio/ByteBuffer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move/from16 v1, p2

    move/from16 v4, p3

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    if-ltz v1, :cond_3

    if-lez v4, :cond_2

    add-int v2, v1, v4

    iget v3, p0, Landroid/os/SharedMemory;->mSize:I

    if-gt v2, v3, :cond_1

    int-to-long v7, v4

    sget v10, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v11, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v12, v1

    const-wide/16 v5, 0x0

    move v9, p1

    invoke-static/range {v5 .. v13}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    new-instance v1, Landroid/os/SharedMemory$Unmapper;

    iget-object v5, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v5}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    new-instance v4, Ljava/nio/DirectByteBuffer;

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v1

    move v6, v7

    move/from16 v1, p3

    invoke-direct/range {v0 .. v6}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset + length must not exceed getSize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist mapReadOnly()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist mapReadWrite()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setProtect(I)Z
    .locals 0

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    iget-object p0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void
.end method
