.class public final Landroid/service/chooser/ChooserAction;
.super Ljava/lang/Object;
.source "ChooserAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:Landroid/app/PendingIntent;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/chooser/ChooserAction$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserAction$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/service/chooser/ChooserAction-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/chooser/ChooserAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAction()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChooserAction {label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
