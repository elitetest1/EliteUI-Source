.class public final Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorAdditionalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist TYPE_INTERNAL_TEMPERATURE_PLAYLOAD_SIZE:I = 0x1

.field private static final blacklist TYPE_SAMPLING_PLAYLOAD_SIZE:I = 0x2

.field private static final blacklist TYPE_SENSOR_PLACEMENT_PAYLOAD_SIZE:I = 0xc

.field private static final blacklist TYPE_UNTRACKED_DELAY_PAYLOAD_SIZE:I = 0x2

.field private static final blacklist TYPE_VEC3_CALIBRATION_PAYLOAD_SIZE:I = 0xc


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist assertValuesLength([FI)V
    .locals 2

    array-length p1, p1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Payload values must have size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist addValues([F)Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    const/16 v1, 0xc

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All payload values must have the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist build()Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(ILjava/util/List;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
