.class public final Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;
.super Ljava/lang/Object;
.source "ModelMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String; = "ModelMetrics"


# instance fields
.field private blacklist accuracy:F

.field private blacklist epochs:I

.field private blacklist ignoredDataPoints:I

.field private blacklist loss:F

.field private blacklist precision:F

.field private blacklist recall:F

.field private blacklist trainSize:I

.field private blacklist valSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    iput v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    iput v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    iput v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromJsonString(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;

    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;-><init>()V

    const-string v1, "accuracy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setAccuracy(F)V

    const-string/jumbo v1, "trainSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setTrainSize(I)V

    const-string/jumbo v1, "valSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setValSize(I)V

    const-string v1, "epochs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setEpochs(I)V

    const-string v1, "loss"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setLoss(F)V

    const-string v1, "ignoredDataPoints"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setIgnoredDataPoints(I)V

    const-string/jumbo v1, "precision"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setPrecision(F)V

    const-string/jumbo v1, "recall"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->setRecall(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing JSON string:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ModelMetrics"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAccuracy()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    return p0
.end method

.method public blacklist getEpochs()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    return p0
.end method

.method public blacklist getIgnoredDataPoints()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    return p0
.end method

.method public blacklist getLoss()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    return p0
.end method

.method public blacklist getPrecision()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    return p0
.end method

.method public blacklist getRecall()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    return p0
.end method

.method public blacklist getTrainSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    return p0
.end method

.method public blacklist getValSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    return p0
.end method

.method public blacklist setAccuracy(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    return-void
.end method

.method public blacklist setEpochs(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    return-void
.end method

.method public blacklist setIgnoredDataPoints(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    return-void
.end method

.method public blacklist setLoss(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    return-void
.end method

.method public blacklist setPrecision(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    return-void
.end method

.method public blacklist setRecall(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    return-void
.end method

.method public blacklist setTrainSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    return-void
.end method

.method public blacklist setValSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    return-void
.end method

.method public blacklist toJsonString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"accuracy\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"trainSize\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"valSize\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"epochs\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"loss\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"ignoredDataPoints\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"precision\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"recall\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelMetrics{accuracy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trainSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", epochs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ignoredDataPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", recall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->accuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->epochs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->ignoredDataPoints:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->loss:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->precision:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->recall:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->trainSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;->valSize:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
