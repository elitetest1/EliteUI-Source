.class Landroid/os/PowerComponents;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerComponents$Builder;
    }
.end annotation


# static fields
.field private static final blacklist XML_TAG_CUSTOM_COMPONENT_COMPAT:Ljava/lang/String; = "custom_component"


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .locals 0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerComponents$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method private blacklist dump(Ljava/lang/StringBuilder;IIIIZ)V
    .locals 6

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide p4

    const-wide/16 v2, 0x0

    if-eqz p6, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double p6, v0, v4

    if-nez p6, :cond_0

    cmp-long p6, p4, v2

    if-nez p6, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {p0, p2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x1

    if-eq p3, p0, :cond_1

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p0, p4, v2

    if-eqz p0, :cond_2

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static blacklist parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_components"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_a

    if-ne v2, v3, :cond_9

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v7, "component"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "custom_component"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move v2, v7

    move v12, v2

    move v14, v12

    move v15, v14

    const/4 v13, -0x1

    :goto_1
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v12, v3, :cond_8

    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_2
    const/4 v3, -0x1

    goto :goto_3

    :sswitch_0
    const-string/jumbo v4, "process_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    goto :goto_3

    :sswitch_1
    const-string/jumbo v4, "power_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    goto :goto_3

    :sswitch_3
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_4
    const-string/jumbo v4, "screen_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v6

    goto :goto_3

    :sswitch_5
    const-string v4, "duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v7

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v14

    goto :goto_4

    :pswitch_1
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    goto :goto_4

    :pswitch_2
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v3

    move-wide v8, v3

    goto :goto_4

    :pswitch_3
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v13

    goto :goto_4

    :pswitch_4
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v15

    goto :goto_4

    :pswitch_5
    invoke-interface {v0, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v3

    move-wide v10, v3

    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_8
    invoke-static {v1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v3

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v3, v13, v14, v15, v2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/PowerComponents$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    :cond_9
    :goto_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Invalid XML parser state"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_5
        -0x4fa21902 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x65e8905 -> :sswitch_2
        0x2eba18d7 -> :sswitch_1
        0x633976c1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    invoke-virtual {p1, v0, v1, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private blacklist writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V
    .locals 12

    move/from16 v0, p7

    const-wide v1, 0x20b00000003L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v5, 0x10b00000001L

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown process state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide v5, 0x10e00000002L

    invoke-virtual {p1, v5, v6, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private blacklist writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v9, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v10, v9

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_4

    aget v2, v9, v12

    iget-object v3, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v3, v2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    aget-object v3, v13, v15

    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v5

    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v11, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v0, v4, v7, v8, v11}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v4, v5, v16

    if-nez v4, :cond_0

    cmp-long v4, v7, v16

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_3

    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_1

    return v11

    :cond_1
    iget v1, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v1, :cond_2

    move v4, v2

    const-wide v2, 0x20b00000002L

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    goto :goto_2

    :cond_2
    move v4, v2

    iget v0, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v1, p1

    move-wide v3, v5

    move-wide v5, v7

    move v7, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/os/PowerComponents;->writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V

    move v4, v2

    :goto_2
    move v1, v11

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method blacklist dump(Ljava/io/PrintWriter;IIZ)V
    .locals 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v7, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_3

    aget v2, v7, v10

    const/16 v0, 0x12

    if-ne v2, v0, :cond_0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    goto :goto_3

    :cond_0
    const/4 v3, -0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    iget-object p0, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean p0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-eqz p0, :cond_2

    move v3, v9

    :goto_1
    const/4 p0, 0x5

    if-ge v3, p0, :cond_2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct/range {v0 .. v6}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object p0, v0

    move p2, v4

    move p3, v5

    move p4, v6

    goto :goto_0

    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getConsumedPower(IIII)D
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget p1, p1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    return-wide v2

    :cond_1
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eq p2, v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    move v4, p3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v6, :cond_4

    if-eqz p4, :cond_4

    move v6, p4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    invoke-virtual {v1, p1, v0, v4, v6}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v4, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    :cond_5
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    :goto_3
    if-ge v5, v1, :cond_7

    aget-object v4, v0, v5

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v6, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v2, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    return-wide v2
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D
    .locals 3

    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Key;)D
    .locals 3

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getCustomPowerComponentName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUsageDurationMillis(IIII)J
    .locals 7

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    move v3, p3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v4, :cond_2

    if-eqz p4, :cond_2

    move v4, p4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_3
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const-wide/16 v3, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v5, v0, v2

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v5, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v6, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-wide v3
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J
    .locals 3

    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J
    .locals 3

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method blacklist hasStatsProtoData()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    move-result p0

    return p0
.end method

.method blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    return-void
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_components"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v8

    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_1

    cmp-long v15, v10, v13

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    const-string v15, "component"

    invoke-interface {v1, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-wide/from16 v16, v13

    const-string v13, "id"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v13, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v13, :cond_2

    const-string/jumbo v13, "process_state"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v13, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eqz v13, :cond_3

    const-string/jumbo v13, "screen_state"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v13, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eqz v13, :cond_4

    const-string/jumbo v13, "power_state"

    iget v7, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-interface {v1, v2, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    if-eqz v12, :cond_5

    const-string/jumbo v7, "power"

    invoke-interface {v1, v2, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    cmp-long v7, v10, v16

    if-eqz v7, :cond_6

    const-string v7, "duration"

    invoke-interface {v1, v2, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-interface {v1, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
