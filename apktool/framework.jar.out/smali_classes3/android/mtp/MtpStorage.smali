.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final blacklist mIsHostWindows:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMaxFileSize:J

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private final greylist-max-o mRemovable:Z

.field private final greylist-max-o mStorageId:I

.field private final blacklist mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    iput-object p3, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    const p3, 0x10001

    if-ne p2, p3, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10401ec

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-void

    :cond_0
    const p3, 0x10002

    if-ne p2, p3, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10401e9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final greylist-max-o getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final greylist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist getStorageId()I
    .locals 0

    iget p0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return p0
.end method

.method public blacklist getVolumeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isHostWindows()Z
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final greylist-max-o isRemovable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return p0
.end method
