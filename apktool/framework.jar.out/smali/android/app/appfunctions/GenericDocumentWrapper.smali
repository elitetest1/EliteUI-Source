.class public final Landroid/app/appfunctions/GenericDocumentWrapper;
.super Ljava/lang/Object;
.source "GenericDocumentWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/GenericDocumentWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDataSize:Ljava/lang/Integer;

.field private blacklist mGenericDocument:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper$1;

    invoke-direct {v0}, Landroid/app/appfunctions/GenericDocumentWrapper$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/GenericDocumentWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    return-void
.end method

.method private blacklist unparcel()V
    .locals 5

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v2}, Landroid/app/appsearch/GenericDocument;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist getDataSize()I
    .locals 3

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object p0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mDataSize:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getValue()Landroid/app/appsearch/GenericDocument;
    .locals 1

    invoke-direct {p0}, Landroid/app/appfunctions/GenericDocumentWrapper;->unparcel()V

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/GenericDocument;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-virtual {p0, v2, p2}, Landroid/app/appsearch/GenericDocument;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBlob([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    iget-object p0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
