.class public Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "GrdmIntegrityControlCheckCenter.java"


# instance fields
.field blacklist mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;->mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Service assigned: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/icccgrdm/GrdmIntegrityControlCheckCenter;->mService:Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GrdmIntegrityControlCheckCenter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
