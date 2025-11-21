.class final Landroid/os/PerfettoTrackEventExtra$Pool;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pool"
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

.field private blacklist mIdx:I

.field private final blacklist mValueArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mCapacity:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    iget v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mCapacity:I

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    :cond_1
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    iget v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    aget-object p0, p1, v0

    return-object p0
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    return-void
.end method
