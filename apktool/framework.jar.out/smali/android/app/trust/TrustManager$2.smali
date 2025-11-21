.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/trust/TrustManager$TrustListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/trust/TrustManager$TrustListener;->onIsActiveUnlockRunningChanged(ZI)V

    return-void

    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/trust/TrustManager$TrustListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/trust/TrustManager$TrustListener;->onEnabledTrustAgentsChanged(I)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/TrustManager$TrustListener;

    invoke-interface {p1, p0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustError(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/app/trust/TrustManager$TrustListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v2, "initiatedByUser"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    goto :goto_2

    :cond_7
    move v7, v1

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_8

    move v4, v0

    goto :goto_3

    :cond_8
    move v4, v1

    :goto_3
    if-eqz p0, :cond_9

    const-string/jumbo v2, "newlyUnlocked"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_4

    :cond_9
    move p0, v1

    :goto_4
    if-eqz p0, :cond_a

    move v5, v0

    goto :goto_5

    :cond_a
    move v5, v1

    :goto_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroid/app/trust/TrustManager$TrustListener;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "grantedMessages"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZZIILjava/util/List;)V

    return-void
.end method
