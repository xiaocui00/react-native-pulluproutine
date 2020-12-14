
#import "RNPulluproutine.h"
#import "WXApi.h"
#import "WXApiObject.h"

#define INVOKE_FAILED (@"WeChat API invoke returns false.")

@interface RNPulluproutine ()

@property (nonatomic, copy) RCTResponseSenderBlock callback;

@end

@implementation RNPulluproutine

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(wechatLoad:(NSString *)userName path:(NSString *)path callback:(RCTResponseSenderBlock)callback) {
    self.callback = callback;
//    __weak RNPulluproutine *weakself = self;
    WXLaunchMiniProgramReq *launchMiniProgramReq = [WXLaunchMiniProgramReq object];
    launchMiniProgramReq.userName = userName;  //拉起的小程序的username
    launchMiniProgramReq.path = path; //拉起小程序页面的可带参路径，不填默认拉起小程序首页，对于小游戏，可以只传入query部分，来实现传参效果，如：传入 "?foo=bar"。
    launchMiniProgramReq.miniProgramType = WXMiniProgramTypeRelease; //拉起小程序的类型
//    WXMiniProgramTypeRelease = 0,       //**< 正式版  */
//    WXMiniProgramTypeTest = 1,        //**< 开发版  */
//    WXMiniProgramTypePreview = 2,         //**< 体验版  */
    return  [WXApi sendReq:launchMiniProgramReq completion:^(BOOL success) {
        callback(@[success ? [NSNull null] : INVOKE_FAILED]);
    }];
}

-(void)onResp:(BaseResp *)resp
{
    if ([resp isKindOfClass:[WXLaunchMiniProgramResp class]])
    {
        NSString *string = resp.errStr;
        // 对应JsApi navigateBackApplication中的extraData字段数据
        NSLog(@"ios log uploadRecord finishDic %@",string);
    }
}

@end
  