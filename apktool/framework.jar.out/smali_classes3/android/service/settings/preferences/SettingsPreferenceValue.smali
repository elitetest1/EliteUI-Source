.class public final Landroid/service/settings/preferences/SettingsPreferenceValue;
.super Ljava/lang/Object;
.source "SettingsPreferenceValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;,
        Landroid/service/settings/preferences/SettingsPreferenceValue$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SettingsPreferenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_TYPE_VALUE:I = 0x4

.field public static final whitelist TYPE_BOOLEAN:I = 0x0

.field public static final whitelist TYPE_DOUBLE:I = 0x2

.field public static final whitelist TYPE_INT:I = 0x4

.field public static final whitelist TYPE_LONG:I = 0x1

.field public static final whitelist TYPE_STRING:I = 0x3


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceValue$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SettingsPreferenceValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SettingsPreferenceValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->-$$Nest$fgetmType(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->-$$Nest$fgetmValue(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;Landroid/service/settings/preferences/SettingsPreferenceValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceValue;-><init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getBooleanValue()Z
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public whitelist getDoubleValue()D
    .locals 2

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getIntValue()I
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public whitelist getLongValue()J
    .locals 2

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getBooleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getIntValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    return-void
.end method
