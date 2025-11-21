.class Lcom/samsung/android/lock/SPBnRManager$BnRData;
.super Ljava/lang/Object;
.source "SPBnRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lock/SPBnRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BnRData"
.end annotation


# instance fields
.field blacklist mFileName:Ljava/lang/String;

.field blacklist mName:Ljava/lang/String;

.field blacklist mProtectorId:J

.field blacklist mUserId:I


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(IJLjava/lang/String;)Lcom/samsung/android/lock/SPBnRManager$BnRData;
    .locals 1

    new-instance v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;

    invoke-direct {v0}, Lcom/samsung/android/lock/SPBnRManager$BnRData;-><init>()V

    iput-wide p1, v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mProtectorId:J

    iput p0, v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mUserId:I

    iput-object p3, v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mName:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%016x.%s"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mFileName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/lock/SPBnRManager$BnRData;->mUserId:I

    return p0
.end method
