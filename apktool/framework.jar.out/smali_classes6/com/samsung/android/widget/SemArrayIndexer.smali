.class public Lcom/samsung/android/widget/SemArrayIndexer;
.super Lcom/samsung/android/widget/SemAbstractIndexer;
.source "SemArrayIndexer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemArrayIndexer"

.field private static final blacklist debug:Z = false


# instance fields
.field protected blacklist mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected blacklist getBundle()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getItemAt(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method protected blacklist isDataToBeIndexedAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemArrayIndexer;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
