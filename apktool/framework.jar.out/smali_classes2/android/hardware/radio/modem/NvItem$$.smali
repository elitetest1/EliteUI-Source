.class public interface abstract Landroid/hardware/radio/modem/NvItem$$;
.super Ljava/lang/Object;
.source "NvItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/NvItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/modem/NvItem$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-class v1, [I

    if-ne v0, v1, :cond_3

    check-cast p0, [I

    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_2

    aget v1, p0, v3

    invoke-static {v1}, Landroid/hardware/radio/modem/NvItem$$;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "CDMA_MEID"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "CDMA_MIN"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "CDMA_MDN"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "CDMA_ACCOLC"

    return-object p0

    :cond_4
    const/16 v0, 0xb

    if-ne p0, v0, :cond_5

    const-string p0, "DEVICE_MSL"

    return-object p0

    :cond_5
    const/16 v0, 0xc

    if-ne p0, v0, :cond_6

    const-string p0, "RTN_RECONDITIONED_STATUS"

    return-object p0

    :cond_6
    const/16 v0, 0xd

    if-ne p0, v0, :cond_7

    const-string p0, "RTN_ACTIVATION_DATE"

    return-object p0

    :cond_7
    const/16 v0, 0xe

    if-ne p0, v0, :cond_8

    const-string p0, "RTN_LIFE_TIMER"

    return-object p0

    :cond_8
    const/16 v0, 0xf

    if-ne p0, v0, :cond_9

    const-string p0, "RTN_LIFE_CALLS"

    return-object p0

    :cond_9
    const/16 v0, 0x10

    if-ne p0, v0, :cond_a

    const-string p0, "RTN_LIFE_DATA_TX"

    return-object p0

    :cond_a
    const/16 v0, 0x11

    if-ne p0, v0, :cond_b

    const-string p0, "RTN_LIFE_DATA_RX"

    return-object p0

    :cond_b
    const/16 v0, 0x12

    if-ne p0, v0, :cond_c

    const-string p0, "OMADM_HFA_LEVEL"

    return-object p0

    :cond_c
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d

    const-string p0, "MIP_PROFILE_NAI"

    return-object p0

    :cond_d
    const/16 v0, 0x20

    if-ne p0, v0, :cond_e

    const-string p0, "MIP_PROFILE_HOME_ADDRESS"

    return-object p0

    :cond_e
    const/16 v0, 0x21

    if-ne p0, v0, :cond_f

    const-string p0, "MIP_PROFILE_AAA_AUTH"

    return-object p0

    :cond_f
    const/16 v0, 0x22

    if-ne p0, v0, :cond_10

    const-string p0, "MIP_PROFILE_HA_AUTH"

    return-object p0

    :cond_10
    const/16 v0, 0x23

    if-ne p0, v0, :cond_11

    const-string p0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object p0

    :cond_11
    const/16 v0, 0x24

    if-ne p0, v0, :cond_12

    const-string p0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object p0

    :cond_12
    const/16 v0, 0x25

    if-ne p0, v0, :cond_13

    const-string p0, "MIP_PROFILE_REV_TUN_PREF"

    return-object p0

    :cond_13
    const/16 v0, 0x26

    if-ne p0, v0, :cond_14

    const-string p0, "MIP_PROFILE_HA_SPI"

    return-object p0

    :cond_14
    const/16 v0, 0x27

    if-ne p0, v0, :cond_15

    const-string p0, "MIP_PROFILE_AAA_SPI"

    return-object p0

    :cond_15
    const/16 v0, 0x28

    if-ne p0, v0, :cond_16

    const-string p0, "MIP_PROFILE_MN_HA_SS"

    return-object p0

    :cond_16
    const/16 v0, 0x29

    if-ne p0, v0, :cond_17

    const-string p0, "MIP_PROFILE_MN_AAA_SS"

    return-object p0

    :cond_17
    const/16 v0, 0x33

    if-ne p0, v0, :cond_18

    const-string p0, "CDMA_PRL_VERSION"

    return-object p0

    :cond_18
    const/16 v0, 0x34

    if-ne p0, v0, :cond_19

    const-string p0, "CDMA_BC10"

    return-object p0

    :cond_19
    const/16 v0, 0x35

    if-ne p0, v0, :cond_1a

    const-string p0, "CDMA_BC14"

    return-object p0

    :cond_1a
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1b

    const-string p0, "CDMA_SO68"

    return-object p0

    :cond_1b
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1c

    const-string p0, "CDMA_SO73_COP0"

    return-object p0

    :cond_1c
    const/16 v0, 0x38

    if-ne p0, v0, :cond_1d

    const-string p0, "CDMA_SO73_COP1TO7"

    return-object p0

    :cond_1d
    const/16 v0, 0x39

    if-ne p0, v0, :cond_1e

    const-string p0, "CDMA_1X_ADVANCED_ENABLED"

    return-object p0

    :cond_1e
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1f

    const-string p0, "CDMA_EHRPD_ENABLED"

    return-object p0

    :cond_1f
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_20

    const-string p0, "CDMA_EHRPD_FORCED"

    return-object p0

    :cond_20
    const/16 v0, 0x47

    if-ne p0, v0, :cond_21

    const-string p0, "LTE_BAND_ENABLE_25"

    return-object p0

    :cond_21
    const/16 v0, 0x48

    if-ne p0, v0, :cond_22

    const-string p0, "LTE_BAND_ENABLE_26"

    return-object p0

    :cond_22
    const/16 v0, 0x49

    if-ne p0, v0, :cond_23

    const-string p0, "LTE_BAND_ENABLE_41"

    return-object p0

    :cond_23
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_24

    const-string p0, "LTE_SCAN_PRIORITY_25"

    return-object p0

    :cond_24
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_25

    const-string p0, "LTE_SCAN_PRIORITY_26"

    return-object p0

    :cond_25
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_26

    const-string p0, "LTE_SCAN_PRIORITY_41"

    return-object p0

    :cond_26
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_27

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object p0

    :cond_27
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_28

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object p0

    :cond_28
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_29

    const-string p0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object p0

    :cond_29
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
