.class public interface abstract Landroid/hardware/radio/voice/LastCallFailCause$$;
.super Ljava/lang/Object;
.source "LastCallFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/LastCallFailCause;
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

    invoke-static {v0}, Landroid/hardware/radio/voice/LastCallFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v1}, Landroid/hardware/radio/voice/LastCallFailCause$$;->toString(I)Ljava/lang/String;

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

    const-string p0, "UNOBTAINABLE_NUMBER"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "NO_ROUTE_TO_DESTINATION"

    return-object p0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const-string p0, "CHANNEL_UNACCEPTABLE"

    return-object p0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    const-string p0, "OPERATOR_DETERMINED_BARRING"

    return-object p0

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    const-string p0, "NORMAL"

    return-object p0

    :cond_5
    const/16 v0, 0x11

    if-ne p0, v0, :cond_6

    const-string p0, "BUSY"

    return-object p0

    :cond_6
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7

    const-string p0, "NO_USER_RESPONDING"

    return-object p0

    :cond_7
    const/16 v0, 0x13

    if-ne p0, v0, :cond_8

    const-string p0, "NO_ANSWER_FROM_USER"

    return-object p0

    :cond_8
    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

    const-string p0, "CALL_REJECTED"

    return-object p0

    :cond_9
    const/16 v0, 0x16

    if-ne p0, v0, :cond_a

    const-string p0, "NUMBER_CHANGED"

    return-object p0

    :cond_a
    const/16 v0, 0x19

    if-ne p0, v0, :cond_b

    const-string p0, "PREEMPTION"

    return-object p0

    :cond_b
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_c

    const-string p0, "DESTINATION_OUT_OF_ORDER"

    return-object p0

    :cond_c
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_d

    const-string p0, "INVALID_NUMBER_FORMAT"

    return-object p0

    :cond_d
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_e

    const-string p0, "FACILITY_REJECTED"

    return-object p0

    :cond_e
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_f

    const-string p0, "RESP_TO_STATUS_ENQUIRY"

    return-object p0

    :cond_f
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_10

    const-string p0, "NORMAL_UNSPECIFIED"

    return-object p0

    :cond_10
    const/16 v0, 0x22

    if-ne p0, v0, :cond_11

    const-string p0, "CONGESTION"

    return-object p0

    :cond_11
    const/16 v0, 0x26

    if-ne p0, v0, :cond_12

    const-string p0, "NETWORK_OUT_OF_ORDER"

    return-object p0

    :cond_12
    const/16 v0, 0x29

    if-ne p0, v0, :cond_13

    const-string p0, "TEMPORARY_FAILURE"

    return-object p0

    :cond_13
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_14

    const-string p0, "SWITCHING_EQUIPMENT_CONGESTION"

    return-object p0

    :cond_14
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_15

    const-string p0, "ACCESS_INFORMATION_DISCARDED"

    return-object p0

    :cond_15
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_16

    const-string p0, "REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE"

    return-object p0

    :cond_16
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_17

    const-string p0, "RESOURCES_UNAVAILABLE_OR_UNSPECIFIED"

    return-object p0

    :cond_17
    const/16 v0, 0x31

    if-ne p0, v0, :cond_18

    const-string p0, "QOS_UNAVAILABLE"

    return-object p0

    :cond_18
    const/16 v0, 0x32

    if-ne p0, v0, :cond_19

    const-string p0, "REQUESTED_FACILITY_NOT_SUBSCRIBED"

    return-object p0

    :cond_19
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1a

    const-string p0, "INCOMING_CALLS_BARRED_WITHIN_CUG"

    return-object p0

    :cond_1a
    const/16 v0, 0x39

    if-ne p0, v0, :cond_1b

    const-string p0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    return-object p0

    :cond_1b
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1c

    const-string p0, "BEARER_CAPABILITY_UNAVAILABLE"

    return-object p0

    :cond_1c
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_1d

    const-string p0, "SERVICE_OPTION_NOT_AVAILABLE"

    return-object p0

    :cond_1d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_1e

    const-string p0, "BEARER_SERVICE_NOT_IMPLEMENTED"

    return-object p0

    :cond_1e
    const/16 v0, 0x44

    if-ne p0, v0, :cond_1f

    const-string p0, "ACM_LIMIT_EXCEEDED"

    return-object p0

    :cond_1f
    const/16 v0, 0x45

    if-ne p0, v0, :cond_20

    const-string p0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    return-object p0

    :cond_20
    const/16 v0, 0x46

    if-ne p0, v0, :cond_21

    const-string p0, "ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE"

    return-object p0

    :cond_21
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_22

    const-string p0, "SERVICE_OR_OPTION_NOT_IMPLEMENTED"

    return-object p0

    :cond_22
    const/16 v0, 0x51

    if-ne p0, v0, :cond_23

    const-string p0, "INVALID_TRANSACTION_IDENTIFIER"

    return-object p0

    :cond_23
    const/16 v0, 0x57

    if-ne p0, v0, :cond_24

    const-string p0, "USER_NOT_MEMBER_OF_CUG"

    return-object p0

    :cond_24
    const/16 v0, 0x58

    if-ne p0, v0, :cond_25

    const-string p0, "INCOMPATIBLE_DESTINATION"

    return-object p0

    :cond_25
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_26

    const-string p0, "INVALID_TRANSIT_NW_SELECTION"

    return-object p0

    :cond_26
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_27

    const-string p0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object p0

    :cond_27
    const/16 v0, 0x60

    if-ne p0, v0, :cond_28

    const-string p0, "INVALID_MANDATORY_INFORMATION"

    return-object p0

    :cond_28
    const/16 v0, 0x61

    if-ne p0, v0, :cond_29

    const-string p0, "MESSAGE_TYPE_NON_IMPLEMENTED"

    return-object p0

    :cond_29
    const/16 v0, 0x62

    if-ne p0, v0, :cond_2a

    const-string p0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    :cond_2a
    const/16 v0, 0x63

    if-ne p0, v0, :cond_2b

    const-string p0, "INFORMATION_ELEMENT_NON_EXISTENT"

    return-object p0

    :cond_2b
    const/16 v0, 0x64

    if-ne p0, v0, :cond_2c

    const-string p0, "CONDITIONAL_IE_ERROR"

    return-object p0

    :cond_2c
    const/16 v0, 0x65

    if-ne p0, v0, :cond_2d

    const-string p0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object p0

    :cond_2d
    const/16 v0, 0x66

    if-ne p0, v0, :cond_2e

    const-string p0, "RECOVERY_ON_TIMER_EXPIRED"

    return-object p0

    :cond_2e
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_2f

    const-string p0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object p0

    :cond_2f
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_30

    const-string p0, "INTERWORKING_UNSPECIFIED"

    return-object p0

    :cond_30
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_31

    const-string p0, "CALL_BARRED"

    return-object p0

    :cond_31
    const/16 v0, 0xf1

    if-ne p0, v0, :cond_32

    const-string p0, "FDN_BLOCKED"

    return-object p0

    :cond_32
    const/16 v0, 0xf2

    if-ne p0, v0, :cond_33

    const-string p0, "IMSI_UNKNOWN_IN_VLR"

    return-object p0

    :cond_33
    const/16 v0, 0xf3

    if-ne p0, v0, :cond_34

    const-string p0, "IMEI_NOT_ACCEPTED"

    return-object p0

    :cond_34
    const/16 v0, 0xf4

    if-ne p0, v0, :cond_35

    const-string p0, "DIAL_MODIFIED_TO_USSD"

    return-object p0

    :cond_35
    const/16 v0, 0xf5

    if-ne p0, v0, :cond_36

    const-string p0, "DIAL_MODIFIED_TO_SS"

    return-object p0

    :cond_36
    const/16 v0, 0xf6

    if-ne p0, v0, :cond_37

    const-string p0, "DIAL_MODIFIED_TO_DIAL"

    return-object p0

    :cond_37
    const/16 v0, 0xf7

    if-ne p0, v0, :cond_38

    const-string p0, "RADIO_OFF"

    return-object p0

    :cond_38
    const/16 v0, 0xf8

    if-ne p0, v0, :cond_39

    const-string p0, "OUT_OF_SERVICE"

    return-object p0

    :cond_39
    const/16 v0, 0xf9

    if-ne p0, v0, :cond_3a

    const-string p0, "NO_VALID_SIM"

    return-object p0

    :cond_3a
    const/16 v0, 0xfa

    if-ne p0, v0, :cond_3b

    const-string p0, "RADIO_INTERNAL_ERROR"

    return-object p0

    :cond_3b
    const/16 v0, 0xfb

    if-ne p0, v0, :cond_3c

    const-string p0, "NETWORK_RESP_TIMEOUT"

    return-object p0

    :cond_3c
    const/16 v0, 0xfc

    if-ne p0, v0, :cond_3d

    const-string p0, "NETWORK_REJECT"

    return-object p0

    :cond_3d
    const/16 v0, 0xfd

    if-ne p0, v0, :cond_3e

    const-string p0, "RADIO_ACCESS_FAILURE"

    return-object p0

    :cond_3e
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_3f

    const-string p0, "RADIO_LINK_FAILURE"

    return-object p0

    :cond_3f
    const/16 v0, 0xff

    if-ne p0, v0, :cond_40

    const-string p0, "RADIO_LINK_LOST"

    return-object p0

    :cond_40
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    const-string p0, "RADIO_UPLINK_FAILURE"

    return-object p0

    :cond_41
    const/16 v0, 0x101

    if-ne p0, v0, :cond_42

    const-string p0, "RADIO_SETUP_FAILURE"

    return-object p0

    :cond_42
    const/16 v0, 0x102

    if-ne p0, v0, :cond_43

    const-string p0, "RADIO_RELEASE_NORMAL"

    return-object p0

    :cond_43
    const/16 v0, 0x103

    if-ne p0, v0, :cond_44

    const-string p0, "RADIO_RELEASE_ABNORMAL"

    return-object p0

    :cond_44
    const/16 v0, 0x104

    if-ne p0, v0, :cond_45

    const-string p0, "ACCESS_CLASS_BLOCKED"

    return-object p0

    :cond_45
    const/16 v0, 0x105

    if-ne p0, v0, :cond_46

    const-string p0, "NETWORK_DETACH"

    return-object p0

    :cond_46
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_47

    const-string p0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object p0

    :cond_47
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_48

    const-string p0, "CDMA_DROP"

    return-object p0

    :cond_48
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_49

    const-string p0, "CDMA_INTERCEPT"

    return-object p0

    :cond_49
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_4a

    const-string p0, "CDMA_REORDER"

    return-object p0

    :cond_4a
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_4b

    const-string p0, "CDMA_SO_REJECT"

    return-object p0

    :cond_4b
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_4c

    const-string p0, "CDMA_RETRY_ORDER"

    return-object p0

    :cond_4c
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_4d

    const-string p0, "CDMA_ACCESS_FAILURE"

    return-object p0

    :cond_4d
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_4e

    const-string p0, "CDMA_PREEMPTED"

    return-object p0

    :cond_4e
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_4f

    const-string p0, "CDMA_NOT_EMERGENCY"

    return-object p0

    :cond_4f
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_50

    const-string p0, "CDMA_ACCESS_BLOCKED"

    return-object p0

    :cond_50
    const v0, 0xf001

    if-ne p0, v0, :cond_51

    const-string p0, "OEM_CAUSE_1"

    return-object p0

    :cond_51
    const v0, 0xf002

    if-ne p0, v0, :cond_52

    const-string p0, "OEM_CAUSE_2"

    return-object p0

    :cond_52
    const v0, 0xf003

    if-ne p0, v0, :cond_53

    const-string p0, "OEM_CAUSE_3"

    return-object p0

    :cond_53
    const v0, 0xf004

    if-ne p0, v0, :cond_54

    const-string p0, "OEM_CAUSE_4"

    return-object p0

    :cond_54
    const v0, 0xf005

    if-ne p0, v0, :cond_55

    const-string p0, "OEM_CAUSE_5"

    return-object p0

    :cond_55
    const v0, 0xf006

    if-ne p0, v0, :cond_56

    const-string p0, "OEM_CAUSE_6"

    return-object p0

    :cond_56
    const v0, 0xf007

    if-ne p0, v0, :cond_57

    const-string p0, "OEM_CAUSE_7"

    return-object p0

    :cond_57
    const v0, 0xf008

    if-ne p0, v0, :cond_58

    const-string p0, "OEM_CAUSE_8"

    return-object p0

    :cond_58
    const v0, 0xf009

    if-ne p0, v0, :cond_59

    const-string p0, "OEM_CAUSE_9"

    return-object p0

    :cond_59
    const v0, 0xf00a

    if-ne p0, v0, :cond_5a

    const-string p0, "OEM_CAUSE_10"

    return-object p0

    :cond_5a
    const v0, 0xf00b

    if-ne p0, v0, :cond_5b

    const-string p0, "OEM_CAUSE_11"

    return-object p0

    :cond_5b
    const v0, 0xf00c

    if-ne p0, v0, :cond_5c

    const-string p0, "OEM_CAUSE_12"

    return-object p0

    :cond_5c
    const v0, 0xf00d

    if-ne p0, v0, :cond_5d

    const-string p0, "OEM_CAUSE_13"

    return-object p0

    :cond_5d
    const v0, 0xf00e

    if-ne p0, v0, :cond_5e

    const-string p0, "OEM_CAUSE_14"

    return-object p0

    :cond_5e
    const v0, 0xf00f

    if-ne p0, v0, :cond_5f

    const-string p0, "OEM_CAUSE_15"

    return-object p0

    :cond_5f
    const v0, 0xffff

    if-ne p0, v0, :cond_60

    const-string p0, "ERROR_UNSPECIFIED"

    return-object p0

    :cond_60
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
