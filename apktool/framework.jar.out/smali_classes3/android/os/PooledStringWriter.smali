.class public Landroid/os/PooledStringWriter;
.super Ljava/lang/Object;
.source "PooledStringWriter.java"


# instance fields
.field private greylist-max-o mNext:I

.field private final greylist-max-o mOut:Landroid/os/Parcel;

.field private final greylist-max-o mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStart:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/os/PooledStringWriter;->mStart:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o finish()V
    .locals 3

    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mStart:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public greylist-max-o getStringCount()I
    .locals 0

    iget-object p0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public greylist-max-o writeString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p1, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/os/PooledStringWriter;->mNext:I

    return-void
.end method
