# NotificationsSection section and its elements
class NotificationsSection < SitePrism::Section
  elements :notification_images, 'img[src*="https://img.alicdn.com/"]'
end
