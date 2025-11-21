.class public final Landroid/service/controls/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/Control$StatefulBuilder;,
        Landroid/service/controls/Control$StatelessBuilder;,
        Landroid/service/controls/Control$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NUM_STATUS:I = 0x5

.field public static final whitelist STATUS_DISABLED:I = 0x4

.field public static final whitelist STATUS_ERROR:I = 0x3

.field public static final whitelist STATUS_NOT_FOUND:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Control"


# instance fields
.field private final blacklist mAppIntent:Landroid/app/PendingIntent;

.field private final blacklist mAuthRequired:Z

.field private final blacklist mControlId:Ljava/lang/String;

.field private final blacklist mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private final blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private blacklist mCustomControl:Landroid/service/controls/CustomControl;

.field private final blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceType:I

.field private final blacklist mStatus:I

.field private final blacklist mStatusText:Ljava/lang/CharSequence;

.field private final blacklist mStructure:Ljava/lang/CharSequence;

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomControl(Landroid/service/controls/Control;)Landroid/service/controls/CustomControl;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/service/controls/Control;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomControl(Landroid/service/controls/Control;Landroid/service/controls/CustomControl;)V
    .locals 0

    iput-object p1, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/controls/Control$1;

    invoke-direct {v0}, Landroid/service/controls/Control$1;-><init>()V

    sput-object v0, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    :goto_1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    goto :goto_3

    :cond_3
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    sget-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplateWrapper;->getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    sget-object v0, Landroid/service/controls/CustomControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/controls/CustomControl;

    iput-object p1, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-static {p2}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Control"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid device type:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    goto :goto_0

    :cond_0
    iput p2, p0, Landroid/service/controls/Control;->mDeviceType:I

    :goto_0
    iput-object p3, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    iput-object p5, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    iput-object p6, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    iput-object p7, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    iput-object p9, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    iput-object p8, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-ltz p10, :cond_2

    const/4 p1, 0x5

    if-lt p10, p1, :cond_1

    goto :goto_1

    :cond_1
    iput p10, p0, Landroid/service/controls/Control;->mStatus:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Status unknown:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object p11, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    move-object p1, p12

    iput-object p1, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    move/from16 p1, p13

    iput-boolean p1, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    new-instance p1, Landroid/service/controls/CustomControl;

    invoke-direct {p1}, Landroid/service/controls/CustomControl;-><init>()V

    iput-object p1, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAppIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public whitelist getControlId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method public whitelist getCustomColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public blacklist getCustomControl()Landroid/service/controls/CustomControl;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-object p0
.end method

.method public whitelist getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getDeviceType()I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return p0
.end method

.method public whitelist getStatus()I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mStatus:I

    return p0
.end method

.method public whitelist getStatusText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getStructure()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getZone()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist isAuthRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    iget-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/templates/ControlTemplateWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    invoke-virtual {p0, p1, p2}, Landroid/service/controls/CustomControl;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
