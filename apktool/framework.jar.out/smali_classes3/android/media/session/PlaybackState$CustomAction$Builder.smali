.class public final Landroid/media/session/PlaybackState$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mAction:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIcon:I

.field private final greylist-max-o mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify a name to build a CustomAction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify an action to build a CustomAction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/media/session/PlaybackState$CustomAction;
    .locals 6

    new-instance v0, Landroid/media/session/PlaybackState$CustomAction;

    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
