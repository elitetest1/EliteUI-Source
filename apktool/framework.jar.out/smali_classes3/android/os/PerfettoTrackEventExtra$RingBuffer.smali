.class final Landroid/os/PerfettoTrackEventExtra$RingBuffer;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RingBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCapacity:I

.field private final blacklist mKeyArray:[I

.field private final blacklist mValueArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist mWriteEnd:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist put(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    aput p1, v0, v1

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    rem-int/2addr v1, p1

    iput v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    return-void
.end method
