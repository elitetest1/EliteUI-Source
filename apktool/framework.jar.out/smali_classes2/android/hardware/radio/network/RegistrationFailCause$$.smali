.class public interface abstract Landroid/hardware/radio/network/RegistrationFailCause$$;
.super Ljava/lang/Object;
.source "RegistrationFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/RegistrationFailCause;
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

    invoke-static {v0}, Landroid/hardware/radio/network/RegistrationFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v1}, Landroid/hardware/radio/network/RegistrationFailCause$$;->toString(I)Ljava/lang/String;

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

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "IMSI_UNKNOWN_IN_HLR"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "ILLEGAL_MS"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "IMSI_UNKNOWN_IN_VLR"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "IMEI_NOT_ACCEPTED"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "ILLEGAL_ME"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "IMPLICITLY_DETACHED"

    return-object p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string p0, "PLMN_NOT_ALLOWED"

    return-object p0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string p0, "LOCATION_AREA_NOT_ALLOWED"

    return-object p0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string p0, "ROAMING_NOT_ALLOWED"

    return-object p0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string p0, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object p0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const-string p0, "NO_SUITABLE_CELLS"

    return-object p0

    :cond_e
    if-ne p0, v0, :cond_f

    const-string p0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "MSC_TEMP_NOT_REACHABLE"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "NETWORK_FAILURE"

    return-object p0

    :cond_11
    const/16 v0, 0x14

    if-ne p0, v0, :cond_12

    const-string p0, "MAC_FAILURE"

    return-object p0

    :cond_12
    const/16 v0, 0x15

    if-ne p0, v0, :cond_13

    const-string p0, "SYNC_FAILURE"

    return-object p0

    :cond_13
    const/16 v0, 0x16

    if-ne p0, v0, :cond_14

    const-string p0, "CONGESTION"

    return-object p0

    :cond_14
    const/16 v0, 0x17

    if-ne p0, v0, :cond_15

    const-string p0, "GSM_AUTHENTICATION_UNACCEPTABLE"

    return-object p0

    :cond_15
    const/16 v0, 0x19

    if-ne p0, v0, :cond_16

    const-string p0, "NOT_AUTHORIZED_FOR_THIS_CSG"

    return-object p0

    :cond_16
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_17

    const-string p0, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    return-object p0

    :cond_17
    const/16 v0, 0x20

    if-ne p0, v0, :cond_18

    const-string p0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object p0

    :cond_18
    const/16 v0, 0x21

    if-ne p0, v0, :cond_19

    const-string p0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object p0

    :cond_19
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1a

    const-string p0, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    return-object p0

    :cond_1a
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1b

    const-string p0, "CALL_CANNOT_BE_IDENTIFIED"

    return-object p0

    :cond_1b
    const/16 v0, 0x28

    if-ne p0, v0, :cond_1c

    const-string p0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object p0

    :cond_1c
    const/16 v0, 0x30

    if-ne p0, v0, :cond_1d

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    return-object p0

    :cond_1d
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1e

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    return-object p0

    :cond_1e
    const/16 v0, 0x32

    if-ne p0, v0, :cond_1f

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    return-object p0

    :cond_1f
    const/16 v0, 0x33

    if-ne p0, v0, :cond_20

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    return-object p0

    :cond_20
    const/16 v0, 0x34

    if-ne p0, v0, :cond_21

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    return-object p0

    :cond_21
    const/16 v0, 0x35

    if-ne p0, v0, :cond_22

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    return-object p0

    :cond_22
    const/16 v0, 0x36

    if-ne p0, v0, :cond_23

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    return-object p0

    :cond_23
    const/16 v0, 0x37

    if-ne p0, v0, :cond_24

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    return-object p0

    :cond_24
    const/16 v0, 0x38

    if-ne p0, v0, :cond_25

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    return-object p0

    :cond_25
    const/16 v0, 0x39

    if-ne p0, v0, :cond_26

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    return-object p0

    :cond_26
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_27

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    return-object p0

    :cond_27
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_28

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    return-object p0

    :cond_28
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_29

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    return-object p0

    :cond_29
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_2a

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    return-object p0

    :cond_2a
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_2b

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    return-object p0

    :cond_2b
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_2c

    const-string p0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    return-object p0

    :cond_2c
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2d

    const-string p0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object p0

    :cond_2d
    const/16 v0, 0x60

    if-ne p0, v0, :cond_2e

    const-string p0, "INVALID_MANDATORY_INFORMATION"

    return-object p0

    :cond_2e
    const/16 v0, 0x61

    if-ne p0, v0, :cond_2f

    const-string p0, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object p0

    :cond_2f
    const/16 v0, 0x62

    if-ne p0, v0, :cond_30

    const-string p0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    :cond_30
    const/16 v0, 0x63

    if-ne p0, v0, :cond_31

    const-string p0, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object p0

    :cond_31
    const/16 v0, 0x64

    if-ne p0, v0, :cond_32

    const-string p0, "CONDITIONAL_IE_ERROR"

    return-object p0

    :cond_32
    const/16 v0, 0x65

    if-ne p0, v0, :cond_33

    const-string p0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    :cond_33
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_34

    const-string p0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object p0

    :cond_34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
