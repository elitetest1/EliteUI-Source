.class public abstract Landroid/gesture/GestureLibrary;
.super Ljava/lang/Object;
.source "GestureLibrary.java"


# instance fields
.field protected final whitelist mStore:Landroid/gesture/GestureStore;


# direct methods
.method protected constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/gesture/GestureStore;

    invoke-direct {v0}, Landroid/gesture/GestureStore;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    return-void
.end method


# virtual methods
.method public whitelist addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1, p2}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    return-void
.end method

.method public whitelist getGestureEntries()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0}, Landroid/gesture/GestureStore;->getGestureEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getLearner()Landroid/gesture/Learner;
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0}, Landroid/gesture/GestureStore;->getLearner()Landroid/gesture/Learner;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getOrientationStyle()I
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0}, Landroid/gesture/GestureStore;->getOrientationStyle()I

    move-result p0

    return p0
.end method

.method public whitelist getSequenceType()I
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0}, Landroid/gesture/GestureStore;->getSequenceType()I

    move-result p0

    return p0
.end method

.method public whitelist isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist load()Z
.end method

.method public whitelist recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist removeEntry(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1, p2}, Landroid/gesture/GestureStore;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    return-void
.end method

.method public abstract whitelist save()Z
.end method

.method public whitelist setOrientationStyle(I)V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStore;->setOrientationStyle(I)V

    return-void
.end method

.method public whitelist setSequenceType(I)V
    .locals 0

    iget-object p0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStore;->setSequenceType(I)V

    return-void
.end method
