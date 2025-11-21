.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;
.super Ljava/lang/Object;
.source "ATCommandAttribute.java"


# static fields
.field private static final blacklist AUTOBLOCKER_OPEN:Ljava/lang/String; = "ABO"

.field private static final blacklist CARRIER_BLOCK:Ljava/lang/String; = "CRB"

.field private static final blacklist CARRIER_OPEN:Ljava/lang/String; = "CRO"

.field private static final blacklist CSTOOL_OPEN:Ljava/lang/String; = "CSO"

.field private static final blacklist FACBIN_OPEN_ATD:Ljava/lang/String; = "FBOA"

.field private static final blacklist FACBIN_OPEN_ATD_DDEXE:Ljava/lang/String; = "FBOAD"

.field private static final blacklist FACBIN_OPEN_DDEXE:Ljava/lang/String; = "FBOD"

.field private static final blacklist SECURELOCK_OPEN:Ljava/lang/String; = "SLO"

.field private static final blacklist SHIPBIN_BLOCK:Ljava/lang/String; = "SBB"


# instance fields
.field private blacklist mAutoBlockerOpen:Z

.field private blacklist mCSOpen:Z

.field private blacklist mCarrierBlock:Z

.field private blacklist mCarrierBlockList:Ljava/lang/String;

.field private blacklist mCarrierOpen:Z

.field private blacklist mCarrierOpenList:Ljava/lang/String;

.field private blacklist mFacBinOpenATD:Z

.field private blacklist mFacBinOpenATDDDEXE:Z

.field private blacklist mFacBinOpenDDEXE:Z

.field private blacklist mSecureLockOpen:Z

.field private blacklist mShipBlock:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getAutoBlockerOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    return p0
.end method

.method public blacklist getCSOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    return p0
.end method

.method public blacklist getCarrierBlock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    return p0
.end method

.method public blacklist getCarrierBlockList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCarrierOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    return p0
.end method

.method public blacklist getCarrierOpenList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFacBinOpenATD()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    return p0
.end method

.method public blacklist getFacBinOpenATDDDEXE()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    return p0
.end method

.method public blacklist getFacBinOpenDDEXE()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    return p0
.end method

.method public blacklist getSecureLockOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    return p0
.end method

.method public blacklist getShipBlock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    return p0
.end method

.method blacklist setAttribute([B)[B
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_f

    aget-object v8, v2, v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Attribute = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, -0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "FBOAD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_1
    const-string v9, "FBOD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_2
    const-string v9, "FBOA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_3
    const-string v9, "SLO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v11, v10

    goto :goto_1

    :sswitch_4
    const-string v9, "SBB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x2

    goto :goto_1

    :sswitch_5
    const-string v9, "CSO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    move v11, v3

    goto :goto_1

    :sswitch_6
    const-string v9, "ABO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v9, "FACBIN_OPEN_ATDDDEXE set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    goto :goto_2

    :pswitch_1
    const-string v9, "FACBIN_OPEN_DDEXE set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    goto :goto_2

    :pswitch_2
    const-string v9, "FACBIN_OPEN_ATD set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    goto :goto_2

    :pswitch_3
    const-string v9, "SECURELOCK_OPEN set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    goto :goto_2

    :pswitch_4
    const-string v9, "SHIPBIN_BLOCK set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    goto :goto_2

    :pswitch_5
    const-string v9, "CSTOOL_OPEN set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    goto :goto_2

    :pswitch_6
    const-string v9, "AUTOBLOCKER_OPEN set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    :goto_2
    const-string v9, "CRO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v13, "#### And This command can\'t operate with attribute"

    const-string v14, "#### Error Command Convention, Must check AT Command List File"

    const-string v15, ") is invalid : "

    const/16 p1, 0x0

    const-string v6, "The length of the attribute("

    move/from16 v16, v3

    const/16 v3, 0x28

    const-string v12, "ATCommands"

    if-eqz v11, :cond_a

    const-string v11, "CARRIER_OPEN set"

    invoke-static {v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v10, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v3, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v3, 0x29

    if-eq v11, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v3, v16

    iput-boolean v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v11, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    goto :goto_4

    :cond_9
    :goto_3
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    :goto_4
    const-string v3, "CRB"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "CARRIER_BLOCK set"

    invoke-static {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v10, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x28

    if-ne v6, v9, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x29

    if-eq v6, v10, :cond_c

    goto :goto_5

    :cond_c
    iput-boolean v9, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    goto :goto_6

    :cond_d
    :goto_5
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const/4 v9, 0x1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto/16 :goto_0

    :cond_f
    const/16 p1, 0x0

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfc4e -> :sswitch_6
        0x105df -> :sswitch_5
        0x13fd3 -> :sswitch_4
        0x14116 -> :sswitch_3
        0x20d38e -> :sswitch_2
        0x20d391 -> :sswitch_1
        0x3f99e76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
