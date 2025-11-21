.class public abstract Landroid/service/textservice/SpellCheckerService;
.super Landroid/app/Service;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;,
        Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;,
        Landroid/service/textservice/SpellCheckerService$Session;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textservice.SpellCheckerService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpellCheckerService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    invoke-direct {v0, p0}, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;-><init>(Landroid/service/textservice/SpellCheckerService;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    return-void
.end method


# virtual methods
.method public abstract whitelist createSession()Landroid/service/textservice/SpellCheckerService$Session;
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    return-object p0
.end method
